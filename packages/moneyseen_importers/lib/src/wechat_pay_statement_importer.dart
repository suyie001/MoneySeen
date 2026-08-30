import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:moneyseen_domain/moneyseen_domain.dart';
import 'package:xml/xml.dart';

import 'statement_importer.dart';

final class WeChatPayStatementImporter implements StatementImporter {
  const WeChatPayStatementImporter();

  static const _requiredHeaders = <String>{
    '交易时间',
    '交易类型',
    '交易对方',
    '商品',
    '收/支',
    '金额(元)',
    '支付方式',
    '当前状态',
    '交易单号',
    '商户单号',
    '备注',
  };

  @override
  String get sourceType => 'wechat_pay';

  @override
  Future<StatementProbe> probe(StatementFile file) async {
    try {
      final sheet = _readFirstSheet(file.bytes);
      final headerIndex = _findHeaderIndex(sheet.rows);
      if (headerIndex == null) {
        return const StatementProbe(
          sourceType: 'wechat_pay',
          supported: false,
          message: '没有找到微信支付账单的标准表头。',
        );
      }

      final metadata = sheet.rows
          .take(headerIndex)
          .map((row) => row[0] ?? '')
          .where((value) => value.isNotEmpty)
          .toList(growable: false);
      final titleMatches = metadata.any((value) => value.contains('微信支付账单'));
      if (!titleMatches) {
        return const StatementProbe(
          sourceType: 'wechat_pay',
          supported: false,
          message: '文件表头类似微信账单，但缺少微信支付账单标识。',
        );
      }

      final periodText = metadata
          .where((value) => value.contains('起始时间'))
          .firstOrNull;
      final accountText = metadata
          .where((value) => value.contains('微信昵称'))
          .firstOrNull;
      final recordText = metadata
          .where((value) => value.contains('笔记录'))
          .firstOrNull;
      final periodMatches = periodText == null
          ? null
          : RegExp(r'\[(.*?)\].*?\[(.*?)\]').firstMatch(periodText);

      return StatementProbe(
        sourceType: sourceType,
        supported: true,
        statementStartAt: _tryParseDate(periodMatches?.group(1)),
        statementEndAt: _tryParseDate(periodMatches?.group(2)),
        recordCount: recordText == null
            ? sheet.rows.length - headerIndex - 1
            : int.tryParse(
                RegExp(r'(\d+)').firstMatch(recordText)?.group(1) ?? '',
              ),
        accountLabel: accountText == null
            ? null
            : RegExp(r'\[(.*?)\]').firstMatch(accountText)?.group(1),
      );
    } on Object catch (error) {
      return StatementProbe(
        sourceType: sourceType,
        supported: false,
        message: '无法读取 XLSX 文件：$error',
      );
    }
  }

  @override
  Stream<ImportEvent> parse(StatementFile file, ImportContext context) async* {
    final sheet = _readFirstSheet(file.bytes);
    final headerIndex = _findHeaderIndex(sheet.rows);
    if (headerIndex == null) {
      yield const ImportWarning(
        code: 'wechat_header_missing',
        message: '没有找到微信支付账单的标准表头。',
      );
      return;
    }

    final headers = <String, int>{
      for (final entry in sheet.rows[headerIndex].entries)
        entry.value.trim(): entry.key,
    };

    for (var index = headerIndex + 1; index < sheet.rows.length; index++) {
      final row = sheet.rows[index];
      if (row.values.every((value) => value.trim().isEmpty)) continue;

      try {
        final occurredAt = _parseExcelDate(_value(row, headers, '交易时间'));
        final amount = _parseAmount(_value(row, headers, '金额(元)'));
        final directionText = _value(row, headers, '收/支');
        final transactionType = _value(row, headers, '交易类型');
        final counterparty = _value(row, headers, '交易对方');
        final product = _value(row, headers, '商品');
        final status = _value(row, headers, '当前状态');
        final transactionId = _emptyToNull(_value(row, headers, '交易单号'));

        yield ImportTransactionCandidate(
          occurredAt: occurredAt,
          direction: switch (directionText) {
            '收入' => RawDirection.inflow,
            '支出' => RawDirection.outflow,
            '/' => RawDirection.neutral,
            _ => RawDirection.unknown,
          },
          amount: Money(
            minorUnits: (amount * 100).round(),
            currency: context.currency,
          ),
          counterparty: counterparty,
          description: product.isEmpty ? transactionType : product,
          rawTransactionType: transactionType,
          status: _emptyToNull(status),
          sourceTransactionId: transactionId,
          rawData: <String, Object?>{
            for (final header in _requiredHeaders)
              header: _value(row, headers, header),
            'sourceRow': index + 1,
          },
        );
      } on Object catch (error) {
        yield ImportWarning(
          code: 'wechat_row_invalid',
          message: '第 ${index + 1} 行无法导入：$error',
        );
      }
    }
  }
}

final class _WorksheetData {
  const _WorksheetData(this.rows);

  final List<Map<int, String>> rows;
}

_WorksheetData _readFirstSheet(Uint8List bytes) {
  final archive = ZipDecoder().decodeBytes(bytes);
  final workbook = XmlDocument.parse(
    _readArchiveText(archive, 'xl/workbook.xml'),
  );
  final firstSheet = workbook.descendants
      .whereType<XmlElement>()
      .where((element) => element.name.local == 'sheet')
      .firstOrNull;
  if (firstSheet == null) throw const FormatException('工作簿中没有工作表。');

  final relationshipId = firstSheet.attributes
      .where((attribute) => attribute.name.local == 'id')
      .firstOrNull
      ?.value;
  if (relationshipId == null) throw const FormatException('工作表关系缺失。');

  final relationships = XmlDocument.parse(
    _readArchiveText(archive, 'xl/_rels/workbook.xml.rels'),
  );
  final relationship = relationships.descendants
      .whereType<XmlElement>()
      .where((element) => element.name.local == 'Relationship')
      .where((element) => element.getAttribute('Id') == relationshipId)
      .firstOrNull;
  final target = relationship?.getAttribute('Target');
  if (target == null) throw const FormatException('找不到第一个工作表。');

  final sheetPath = target.startsWith('/')
      ? target.substring(1)
      : 'xl/${target.replaceFirst(RegExp(r'^\.\./'), '')}';
  final worksheet = XmlDocument.parse(_readArchiveText(archive, sheetPath));
  final sharedStrings = _readSharedStrings(archive);
  final rows = <Map<int, String>>[];

  for (final rowElement in worksheet.descendants.whereType<XmlElement>().where(
    (element) => element.name.local == 'row',
  )) {
    final row = <int, String>{};
    for (final cell in rowElement.children.whereType<XmlElement>().where(
      (element) => element.name.local == 'c',
    )) {
      final reference = cell.getAttribute('r');
      if (reference == null) continue;
      final column = _columnIndex(reference);
      final type = cell.getAttribute('t');
      final raw = cell.descendants
          .whereType<XmlElement>()
          .where((element) => element.name.local == 'v')
          .firstOrNull
          ?.innerText;
      if (type == 'inlineStr') {
        row[column] = cell.descendants
            .whereType<XmlElement>()
            .where((element) => element.name.local == 't')
            .map((element) => element.innerText)
            .join();
      } else if (type == 's' && raw != null) {
        final sharedIndex = int.tryParse(raw);
        row[column] = sharedIndex == null || sharedIndex >= sharedStrings.length
            ? ''
            : sharedStrings[sharedIndex];
      } else {
        row[column] = raw ?? '';
      }
    }
    rows.add(row);
  }

  return _WorksheetData(rows);
}

List<String> _readSharedStrings(Archive archive) {
  final file = archive.findFile('xl/sharedStrings.xml');
  if (file == null) return const [];
  final document = XmlDocument.parse(utf8.decode(file.content as List<int>));
  return document.descendants
      .whereType<XmlElement>()
      .where((element) => element.name.local == 'si')
      .map(
        (element) => element.descendants
            .whereType<XmlElement>()
            .where((child) => child.name.local == 't')
            .map((child) => child.innerText)
            .join(),
      )
      .toList(growable: false);
}

String _readArchiveText(Archive archive, String path) {
  final file = archive.findFile(path);
  if (file == null) throw FormatException('XLSX 缺少 $path。');
  return utf8.decode(file.content as List<int>);
}

int? _findHeaderIndex(List<Map<int, String>> rows) {
  for (var index = 0; index < rows.length; index++) {
    final values = rows[index].values.map((value) => value.trim()).toSet();
    if (values.containsAll(WeChatPayStatementImporter._requiredHeaders)) {
      return index;
    }
  }
  return null;
}

String _value(Map<int, String> row, Map<String, int> headers, String header) =>
    row[headers[header]]?.trim() ?? '';

int _columnIndex(String reference) {
  final letters = RegExp(r'^[A-Z]+').stringMatch(reference);
  if (letters == null) throw FormatException('无效单元格地址：$reference');
  var result = 0;
  for (final codeUnit in letters.codeUnits) {
    result = result * 26 + codeUnit - 64;
  }
  return result - 1;
}

DateTime _parseExcelDate(String value) {
  final serial = double.tryParse(value);
  if (serial != null) {
    return DateTime(1899, 12, 30).add(
      Duration(milliseconds: (serial * Duration.millisecondsPerDay).round()),
    );
  }
  final parsed = _tryParseDate(value);
  if (parsed == null) throw FormatException('无效交易时间“$value”');
  return parsed;
}

DateTime? _tryParseDate(String? value) {
  if (value == null || value.isEmpty) return null;
  return DateTime.tryParse(value.replaceFirst(' ', 'T'));
}

double _parseAmount(String value) {
  final normalized = value.replaceAll(RegExp(r'[,￥¥\s]'), '');
  final amount = double.tryParse(normalized);
  if (amount == null || amount < 0) throw FormatException('无效金额“$value”');
  return amount;
}

String? _emptyToNull(String value) =>
    value.isEmpty || value == '/' ? null : value;
