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

  test('stores imported transactions and exposes deduplication keys', () async {
    final database = MoneySeenDatabase(NativeDatabase.memory());
    addTearDown(database.close);
    await database.ensureDefaultLedger(
      id: 'personal',
      name: '个人账本',
      type: 'personal',
      currency: 'CNY',
    );
    await database.ensureDefaultAccount(
      id: 'wechat-pay',
      ledgerId: 'personal',
      name: '微信支付',
      type: 'wallet',
      currency: 'CNY',
    );
    final entry = StoredTransactionInput(
      id: 'transaction-1',
      sourceTransactionId: 'wechat-1',
      deduplicationKey: 'wechat_pay:wechat-1',
      occurredAt: DateTime(2026, 7, 1, 12),
      rawDirection: 'outflow',
      nature: 'expense',
      amountMinor: 100,
      currency: 'CNY',
      rawCounterparty: '测试商户',
      description: '测试商品',
      rawTransactionType: '商户消费',
      rawDataJson: '{}',
    );

    final imported = await database.importTransactions(
      batchId: 'batch-1',
      ledgerId: 'personal',
      accountId: 'wechat-pay',
      sourceType: 'wechat_pay',
      fileName: 'wechat.xlsx',
      fileHash: 'hash',
      parserVersion: '1',
      entries: [entry],
    );

    expect(imported, 1);
    expect(await database.existingDeduplicationKeys([entry.deduplicationKey]), {
      entry.deduplicationKey,
    });
  });
}
