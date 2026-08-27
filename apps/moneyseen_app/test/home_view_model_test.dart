import 'package:flutter_test/flutter_test.dart';
import 'package:moneyseen_app/data/repositories/ledger_repository.dart';
import 'package:moneyseen_app/ui/features/home/view_models/home_view_model.dart';
import 'package:moneyseen_domain/moneyseen_domain.dart';

void main() {
  test('initializes a default ledger through the repository', () async {
    final repository = _FakeLedgerRepository();
    final viewModel = HomeViewModel(repository);
    addTearDown(viewModel.dispose);

    await viewModel.initialize();
    await Future<void>.delayed(Duration.zero);

    expect(repository.ensureWasCalled, isTrue);
    expect(viewModel.ledgers.single.name, '个人账本');
    expect(viewModel.isLoading, isFalse);
  });
}

final class _FakeLedgerRepository implements LedgerRepository {
  bool ensureWasCalled = false;

  @override
  Future<void> ensureDefaultLedger() async {
    ensureWasCalled = true;
  }

  @override
  Stream<List<Ledger>> watchLedgers() => Stream.value([
    Ledger(
      id: 'personal',
      name: '个人账本',
      type: LedgerType.personal,
      currency: Currency.cny,
      createdAt: DateTime.utc(2026, 8, 28),
      updatedAt: DateTime.utc(2026, 8, 28),
    ),
  ]);
}
