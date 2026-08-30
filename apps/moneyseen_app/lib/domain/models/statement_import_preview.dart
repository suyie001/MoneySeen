import 'package:moneyseen_domain/moneyseen_domain.dart';

final class StatementImportItem {
  StatementImportItem({
    required this.occurredAt,
    required this.direction,
    required this.amount,
    required this.counterparty,
    required this.description,
    required this.rawTransactionType,
    required this.deduplicationKey,
    required this.rawData,
    this.sourceTransactionId,
    this.status,
    this.isDuplicate = false,
  });

  final DateTime occurredAt;
  final RawDirection direction;
  final Money amount;
  final String counterparty;
  final String description;
  final String rawTransactionType;
  final String? sourceTransactionId;
  final String? status;
  final String deduplicationKey;
  final Map<String, Object?> rawData;
  final bool isDuplicate;
}

final class StatementImportPreview {
  StatementImportPreview({
    required this.sourceType,
    required this.fileName,
    required this.fileHash,
    required this.items,
    required this.warnings,
    this.accountLabel,
    this.statementStartAt,
    this.statementEndAt,
  });

  final String sourceType;
  final String fileName;
  final String fileHash;
  final String? accountLabel;
  final DateTime? statementStartAt;
  final DateTime? statementEndAt;
  final List<StatementImportItem> items;
  final List<String> warnings;

  int get duplicateCount => items.where((item) => item.isDuplicate).length;
  int get importableCount => items.length - duplicateCount;
  int get incomeMinor => _totalFor(RawDirection.inflow);
  int get expenseMinor => _totalFor(RawDirection.outflow);
  int get neutralMinor => _totalFor(RawDirection.neutral);

  int _totalFor(RawDirection direction) => items
      .where((item) => item.direction == direction)
      .fold(0, (total, item) => total + item.amount.minorUnits);
}

final class StatementImportResult {
  const StatementImportResult({
    required this.importedCount,
    required this.duplicateCount,
  });

  final int importedCount;
  final int duplicateCount;
}
