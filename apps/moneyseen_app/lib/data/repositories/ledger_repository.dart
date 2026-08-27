import 'package:moneyseen_domain/moneyseen_domain.dart';

abstract interface class LedgerRepository {
  Future<void> ensureDefaultLedger();
  Stream<List<Ledger>> watchLedgers();
}
