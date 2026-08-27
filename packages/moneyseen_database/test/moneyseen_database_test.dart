import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moneyseen_database/moneyseen_database.dart';

void main() {
  test('creates the default ledger idempotently', () async {
    final database = MoneySeenDatabase(NativeDatabase.memory());
    addTearDown(database.close);

    for (var index = 0; index < 2; index++) {
      await database.ensureDefaultLedger(
        id: 'personal',
        name: '个人账本',
        type: 'personal',
        currency: 'CNY',
      );
    }

    final ledgers = await database.watchLedgers().first;
    expect(ledgers, hasLength(1));
    expect(ledgers.single.name, '个人账本');
  });
}
