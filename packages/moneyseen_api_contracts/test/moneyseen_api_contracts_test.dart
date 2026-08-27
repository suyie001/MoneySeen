import 'package:moneyseen_api_contracts/moneyseen_api_contracts.dart';
import 'package:test/test.dart';

void main() {
  test('classification requests round-trip through JSON', () {
    const request = ClassificationBatchRequest(
      locale: 'zh-CN',
      currency: 'CNY',
      taxonomy: ClassificationTaxonomy(),
      transactions: [
        TransactionSummary(
          clientRef: 'tx-1',
          direction: 'outflow',
          amountMinor: 13300,
          transactionType: 'transfer',
          counterparty: '某交易对象',
          description: '微信转账',
        ),
      ],
    );

    expect(ClassificationBatchRequest.fromJson(request.toJson()), request);
  });
}
