import 'dart:typed_data';

import 'package:moneyseen_domain/moneyseen_domain.dart';

final class StatementFile {
  const StatementFile({required this.name, required this.bytes});

  final String name;
  final Uint8List bytes;
}

final class StatementProbe {
  const StatementProbe({
    required this.sourceType,
    required this.supported,
    this.statementStartAt,
    this.statementEndAt,
    this.recordCount,
    this.accountLabel,
    this.message,
  });

  final String sourceType;
  final bool supported;
  final DateTime? statementStartAt;
  final DateTime? statementEndAt;
  final int? recordCount;
  final String? accountLabel;
  final String? message;
}

final class ImportContext {
  const ImportContext({
    required this.ledgerId,
    required this.accountId,
    required this.currency,
  });

  final String ledgerId;
  final String accountId;
  final Currency currency;
}

sealed class ImportEvent {
  const ImportEvent();
}

final class ImportTransactionCandidate extends ImportEvent {
  const ImportTransactionCandidate({
    required this.occurredAt,
    required this.direction,
    required this.amount,
    required this.counterparty,
    required this.description,
    required this.rawData,
    required this.rawTransactionType,
    this.status,
    this.sourceTransactionId,
  });

  final DateTime occurredAt;
  final RawDirection direction;
  final Money amount;
  final String counterparty;
  final String description;
  final Map<String, Object?> rawData;
  final String rawTransactionType;
  final String? status;
  final String? sourceTransactionId;
}

final class ImportWarning extends ImportEvent {
  const ImportWarning({required this.code, required this.message});

  final String code;
  final String message;
}

abstract interface class StatementImporter {
  String get sourceType;

  Future<StatementProbe> probe(StatementFile file);

  Stream<ImportEvent> parse(StatementFile file, ImportContext context);
}
