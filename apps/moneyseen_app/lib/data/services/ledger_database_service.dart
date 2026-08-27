import 'package:moneyseen_database/moneyseen_database.dart';

final class LedgerDatabaseService {
  const LedgerDatabaseService(this._database);

  final MoneySeenDatabase _database;

  Future<void> ensureDefaultLedger() => _database.ensureDefaultLedger(
    id: 'personal',
    name: '个人账本',
    type: 'personal',
    currency: 'CNY',
  );

  Stream<List<StoredLedger>> watchLedgers() => _database.watchLedgers();
}
