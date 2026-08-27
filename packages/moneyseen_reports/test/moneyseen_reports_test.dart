import 'package:moneyseen_domain/moneyseen_domain.dart';
import 'package:moneyseen_reports/moneyseen_reports.dart';
import 'package:test/test.dart';

void main() {
  test('filters transactions by nature', () {
    final transaction = Transaction(
      id: 'tx-1',
      ledgerId: 'ledger-1',
      accountId: 'account-1',
      occurredAt: DateTime.utc(2026, 8, 28),
      rawDirection: RawDirection.outflow,
      nature: TransactionNature.expense,
      amount: const Money(minorUnits: 100, currency: Currency.cny),
      rawCounterparty: '商户',
      description: '消费',
      classificationStatus: ClassificationStatus.confirmed,
      classificationSource: ClassificationSource.manual,
    );
    const filter = TransactionFilter(natures: {TransactionNature.expense});

    expect(filter.matches(transaction), isTrue);
  });
}
