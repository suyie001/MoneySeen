import 'package:moneyseen_domain/moneyseen_domain.dart';
import 'package:test/test.dart';

void main() {
  group('Money', () {
    test('adds values with the same currency', () {
      const left = Money(minorUnits: 1200, currency: Currency.cny);
      const right = Money(minorUnits: 345, currency: Currency.cny);

      expect((left + right).minorUnits, 1545);
    });

    test('rejects mixed-currency arithmetic', () {
      const cny = Money(minorUnits: 100, currency: Currency.cny);
      const usd = Money(minorUnits: 100, currency: Currency.usd);

      expect(() => cny + usd, throwsArgumentError);
    });
  });
}
