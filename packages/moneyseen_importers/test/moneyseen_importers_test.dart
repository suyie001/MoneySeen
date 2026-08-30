import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:moneyseen_domain/moneyseen_domain.dart';
import 'package:moneyseen_importers/moneyseen_importers.dart';
import 'package:test/test.dart';

void main() {
  test('statement files keep bytes in memory without a platform file type', () {
    final file = StatementFile(
      name: 'wechat.xlsx',
      bytes: Uint8List.fromList([1, 2, 3]),
    );

    expect(file.name, endsWith('.xlsx'));
    expect(file.bytes, hasLength(3));
  });

  test('parses a WeChat Pay XLSX statement', () async {
    final importer = WeChatPayStatementImporter();
    final file = StatementFile(name: 'wechat.xlsx', bytes: _wechatWorkbook());

    final probe = await importer.probe(file);
    final events = await importer
        .parse(
          file,
          const ImportContext(
            ledgerId: 'personal',
            accountId: 'wechat',
            currency: Currency.cny,
          ),
        )
        .toList();

    expect(probe.supported, isTrue);
    expect(probe.recordCount, 1);
    expect(probe.accountLabel, '测试用户');
    expect(probe.statementStartAt, DateTime(2026, 7));
    expect(events, hasLength(1));
    final candidate = events.single as ImportTransactionCandidate;
    expect(candidate.direction, RawDirection.outflow);
    expect(candidate.amount.minorUnits, 13300);
    expect(candidate.rawTransactionType, '转账');
    expect(candidate.sourceTransactionId, '53010000000001');
    expect(candidate.occurredAt, DateTime(2026, 7, 31, 9, 30));
  });
}

Uint8List _wechatWorkbook() {
  const strings = <String>[
    '微信支付账单明细',
    '微信昵称：[测试用户]',
    '起始时间：[2026-07-01 00:00:00] 终止时间：[2026-07-31 23:59:59]',
    '共1笔记录',
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
    '转账',
    '测试商户',
    '微信转账',
    '支出',
    '零钱',
    '对方已收钱',
    '53010000000001',
    '/',
  ];
  final sharedStrings = strings
      .map((value) => '<si><t>${_xmlEscape(value)}</t></si>')
      .join();
  final headerCells = List.generate(
    11,
    (index) =>
        '<c r="${String.fromCharCode(65 + index)}18" t="s"><v>${index + 4}</v></c>',
  ).join();
  const transactionIndexes = [15, 16, 17, 18, null, 19, 20, 21, 22, 22];
  final transactionCells = <String>['<c r="A19"><v>46234.395833333336</v></c>'];
  for (var index = 0; index < transactionIndexes.length; index++) {
    final column = String.fromCharCode(66 + index);
    if (index == 4) {
      transactionCells.add('<c r="${column}19"><v>133</v></c>');
    } else {
      transactionCells.add(
        '<c r="${column}19" t="s"><v>${transactionIndexes[index]}</v></c>',
      );
    }
  }

  final archive = Archive()
    ..addFile(
      ArchiveFile.string(
        'xl/workbook.xml',
        '<workbook xmlns:r="relationships"><sheets><sheet name="Sheet1" r:id="rId1"/></sheets></workbook>',
      ),
    )
    ..addFile(
      ArchiveFile.string(
        'xl/_rels/workbook.xml.rels',
        '<Relationships><Relationship Id="rId1" Target="worksheets/sheet1.xml"/></Relationships>',
      ),
    )
    ..addFile(
      ArchiveFile.string('xl/sharedStrings.xml', '<sst>$sharedStrings</sst>'),
    )
    ..addFile(
      ArchiveFile.string(
        'xl/worksheets/sheet1.xml',
        '<worksheet><sheetData>'
            '<row r="1"><c r="A1" t="s"><v>0</v></c></row>'
            '<row r="2"><c r="A2" t="s"><v>1</v></c></row>'
            '<row r="3"><c r="A3" t="s"><v>2</v></c></row>'
            '<row r="7"><c r="A7" t="s"><v>3</v></c></row>'
            '<row r="18">$headerCells</row>'
            '<row r="19">${transactionCells.join()}</row>'
            '</sheetData></worksheet>',
      ),
    );
  return Uint8List.fromList(ZipEncoder().encode(archive));
}

String _xmlEscape(String value) => value
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;');
