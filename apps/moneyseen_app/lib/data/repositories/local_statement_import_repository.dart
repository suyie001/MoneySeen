import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:moneyseen_database/moneyseen_database.dart';
import 'package:moneyseen_domain/moneyseen_domain.dart';
import 'package:moneyseen_importers/moneyseen_importers.dart';

import '../../domain/models/statement_import_preview.dart';
import '../services/import_database_service.dart';
import '../services/statement_file_picker_service.dart';
import 'statement_import_repository.dart';

final class LocalStatementImportRepository
    implements StatementImportRepository {
  const LocalStatementImportRepository(
    this._filePicker,
    this._importer,
    this._databaseService,
  );

  final StatementFilePicker _filePicker;
  final StatementImporter _importer;
  final ImportDatabaseService _databaseService;

  @override
  Future<StatementImportPreview?> selectAndPreview() async {
    final file = await _filePicker.pickXlsx();
    if (file == null) return null;
    final probe = await _importer.probe(file);
    if (!probe.supported) {
      throw FormatException(probe.message ?? '暂不支持这个账单文件。');
    }

    final events = await _importer
        .parse(
          file,
          const ImportContext(
            ledgerId: 'personal',
            accountId: 'wechat-pay',
            currency: Currency.cny,
          ),
        )
        .toList();
    final fileHash = sha256.convert(file.bytes).toString();
    final parsedItems = events
        .whereType<ImportTransactionCandidate>()
        .map((candidate) {
          final key = _deduplicationKey(candidate);
          return StatementImportItem(
            occurredAt: candidate.occurredAt,
            direction: candidate.direction,
            amount: candidate.amount,
            counterparty: candidate.counterparty,
            description: candidate.description,
            rawTransactionType: candidate.rawTransactionType,
            sourceTransactionId: candidate.sourceTransactionId,
            status: candidate.status,
            deduplicationKey: key,
            rawData: candidate.rawData,
          );
        })
        .toList(growable: false);

    await _databaseService.ensureWeChatAccount();
    final existing = await _databaseService.existingKeys(
      parsedItems.map((item) => item.deduplicationKey),
    );
    final seenInFile = <String>{};
    final items = parsedItems
        .map(
          (item) => StatementImportItem(
            occurredAt: item.occurredAt,
            direction: item.direction,
            amount: item.amount,
            counterparty: item.counterparty,
            description: item.description,
            rawTransactionType: item.rawTransactionType,
            sourceTransactionId: item.sourceTransactionId,
            status: item.status,
            deduplicationKey: item.deduplicationKey,
            rawData: item.rawData,
            isDuplicate:
                existing.contains(item.deduplicationKey) ||
                !seenInFile.add(item.deduplicationKey),
          ),
        )
        .toList(growable: false);

    return StatementImportPreview(
      sourceType: probe.sourceType,
      fileName: file.name,
      fileHash: fileHash,
      accountLabel: probe.accountLabel,
      statementStartAt: probe.statementStartAt,
      statementEndAt: probe.statementEndAt,
      items: items,
      warnings: events
          .whereType<ImportWarning>()
          .map((warning) => warning.message)
          .toList(growable: false),
    );
  }

  @override
  Future<StatementImportResult> commit(StatementImportPreview preview) async {
    final importable = preview.items
        .where((item) => !item.isDuplicate)
        .toList();
    if (importable.isEmpty) {
      return StatementImportResult(
        importedCount: 0,
        duplicateCount: preview.duplicateCount,
      );
    }

    final timestamp = DateTime.now().microsecondsSinceEpoch;
    final importedCount = await _databaseService.importTransactions(
      batchId: 'batch-$timestamp',
      sourceType: preview.sourceType,
      fileName: preview.fileName,
      fileHash: preview.fileHash,
      statementStartAt: preview.statementStartAt,
      statementEndAt: preview.statementEndAt,
      entries: [
        for (var index = 0; index < importable.length; index++)
          StoredTransactionInput(
            id: 'transaction-$timestamp-$index',
            sourceTransactionId: importable[index].sourceTransactionId,
            deduplicationKey: importable[index].deduplicationKey,
            occurredAt: importable[index].occurredAt,
            rawDirection: importable[index].direction.name,
            nature: _initialNature(importable[index].direction).name,
            amountMinor: importable[index].amount.minorUnits,
            currency: importable[index].amount.currency.code,
            rawCounterparty: importable[index].counterparty,
            description: importable[index].description,
            rawTransactionType: importable[index].rawTransactionType,
            status: importable[index].status,
            rawDataJson: jsonEncode(importable[index].rawData),
          ),
      ],
    );
    return StatementImportResult(
      importedCount: importedCount,
      duplicateCount:
          preview.duplicateCount + importable.length - importedCount,
    );
  }
}

String _deduplicationKey(ImportTransactionCandidate candidate) {
  final sourceId = candidate.sourceTransactionId;
  if (sourceId != null && sourceId.isNotEmpty) return 'wechat_pay:$sourceId';
  final fallback = [
    candidate.occurredAt.toIso8601String(),
    candidate.direction.name,
    candidate.amount.minorUnits,
    candidate.counterparty,
    candidate.description,
  ].join('|');
  return 'wechat_pay:fallback:${sha256.convert(utf8.encode(fallback))}';
}

TransactionNature _initialNature(RawDirection direction) => switch (direction) {
  RawDirection.inflow => TransactionNature.income,
  RawDirection.outflow => TransactionNature.expense,
  RawDirection.neutral => TransactionNature.transfer,
  RawDirection.unknown => TransactionNature.other,
};
