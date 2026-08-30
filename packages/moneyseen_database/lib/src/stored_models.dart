final class StoredLedger {
  const StoredLedger({
    required this.id,
    required this.name,
    required this.type,
    required this.currency,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String name;
  final String type;
  final String currency;
  final DateTime createdAt;
  final DateTime updatedAt;
}

final class StoredTransactionInput {
  const StoredTransactionInput({
    required this.id,
    required this.deduplicationKey,
    required this.occurredAt,
    required this.rawDirection,
    required this.nature,
    required this.amountMinor,
    required this.currency,
    required this.rawCounterparty,
    required this.description,
    required this.rawTransactionType,
    required this.rawDataJson,
    this.sourceTransactionId,
    this.status,
  });

  final String id;
  final String? sourceTransactionId;
  final String deduplicationKey;
  final DateTime occurredAt;
  final String rawDirection;
  final String nature;
  final int amountMinor;
  final String currency;
  final String rawCounterparty;
  final String description;
  final String rawTransactionType;
  final String? status;
  final String rawDataJson;
}
