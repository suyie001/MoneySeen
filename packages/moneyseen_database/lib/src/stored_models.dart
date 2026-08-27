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
