import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moneyseen_app/data/repositories/statement_import_repository.dart';
import 'package:moneyseen_app/domain/models/statement_import_preview.dart';
import 'package:moneyseen_app/ui/features/import_statement/view_models/import_statement_view_model.dart';
import 'package:moneyseen_app/ui/features/import_statement/views/import_statement_view.dart';
import 'package:moneyseen_domain/moneyseen_domain.dart';

void main() {
  testWidgets('selects and previews a statement on a narrow screen', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final repository = _PreviewImportRepository();
    final viewModel = ImportStatementViewModel(repository);
    addTearDown(viewModel.dispose);
    await tester.pumpWidget(
      MaterialApp(home: ImportStatementView(viewModel: viewModel)),
    );

    expect(find.text('选择微信支付账单'), findsOneWidget);
    await tester.tap(find.text('选择 XLSX 文件'));
    await tester.pumpAndSettle();

    expect(repository.selectWasCalled, isTrue);
    expect(find.text('可导入'), findsOneWidget);
    expect(find.text('1 笔'), findsOneWidget);
    expect(find.text('确认导入 1 笔'), findsOneWidget);
  });
}

final class _PreviewImportRepository implements StatementImportRepository {
  bool selectWasCalled = false;

  @override
  Future<StatementImportPreview?> selectAndPreview() async {
    selectWasCalled = true;
    return StatementImportPreview(
      sourceType: 'wechat_pay',
      fileName: 'wechat.xlsx',
      fileHash: 'hash',
      statementStartAt: DateTime(2026, 7),
      statementEndAt: DateTime(2026, 7, 31, 23, 59, 59),
      items: [
        StatementImportItem(
          occurredAt: DateTime(2026, 7, 31, 9, 30),
          direction: RawDirection.outflow,
          amount: const Money(minorUnits: 13300, currency: Currency.cny),
          counterparty: '测试商户',
          description: '测试商品',
          rawTransactionType: '转账',
          deduplicationKey: 'wechat_pay:1',
          rawData: const {},
        ),
      ],
      warnings: const [],
    );
  }

  @override
  Future<StatementImportResult> commit(StatementImportPreview preview) async =>
      const StatementImportResult(importedCount: 1, duplicateCount: 0);
}
