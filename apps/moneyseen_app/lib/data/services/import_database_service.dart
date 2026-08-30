import 'package:moneyseen_database/moneyseen_database.dart';

final class ImportDatabaseService {
  const ImportDatabaseService(this._database);

  final MoneySeenDatabase _database;

  Future<void> ensureWeChatAccount() => _database.ensureDefaultAccount(
    id: 'wechat-pay',
    ledgerId: 'personal',
    name: '微信支付',
    type: 'wallet',
    currency: 'CNY',
    institution: 'WeChat Pay',
  );

  Future<Set<String>> existingKeys(Iterable<String> keys) =>
      _database.existingDeduplicationKeys(keys);

  Future<int> importTransactions({
    required String batchId,
    required String sourceType,
    required String fileName,
    required String fileHash,
    required List<StoredTransactionInput> entries,
    DateTime? statementStartAt,
    DateTime? statementEndAt,
  }) => _database.importTransactions(
    batchId: batchId,
    ledgerId: 'personal',
    accountId: 'wechat-pay',
    sourceType: sourceType,
    fileName: fileName,
    fileHash: fileHash,
    parserVersion: 'wechat-pay-xlsx/1',
    entries: entries,
    statementStartAt: statementStartAt,
    statementEndAt: statementEndAt,
  );
}
