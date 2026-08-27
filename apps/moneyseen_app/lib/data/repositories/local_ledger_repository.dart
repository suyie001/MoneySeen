import 'package:moneyseen_domain/moneyseen_domain.dart';

import '../services/ledger_database_service.dart';
import 'ledger_repository.dart';

final class LocalLedgerRepository implements LedgerRepository {
  const LocalLedgerRepository(this._service);

  final LedgerDatabaseService _service;

  @override
  Future<void> ensureDefaultLedger() => _service.ensureDefaultLedger();

  @override
  Stream<List<Ledger>> watchLedgers() => _service.watchLedgers().map(
    (rows) => rows
        .map(
          (row) => Ledger(
            id: row.id,
            name: row.name,
            type: LedgerType.values.byName(row.type),
            currency: Currency.values.firstWhere(
              (currency) => currency.code == row.currency,
            ),
            createdAt: row.createdAt,
            updatedAt: row.updatedAt,
          ),
        )
        .toList(growable: false),
  );
}
