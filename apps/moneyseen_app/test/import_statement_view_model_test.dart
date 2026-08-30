import 'package:flutter_test/flutter_test.dart';
import 'package:moneyseen_app/data/repositories/statement_import_repository.dart';
import 'package:moneyseen_app/domain/models/statement_import_preview.dart';
import 'package:moneyseen_app/ui/features/import_statement/view_models/import_statement_view_model.dart';

void main() {
  test('moves from preview to completed import', () async {
    final repository = _FakeImportRepository();
    final viewModel = ImportStatementViewModel(repository);
    addTearDown(viewModel.dispose);

    await viewModel.selectFile();
    expect(viewModel.phase, ImportStatementPhase.ready);
    expect(viewModel.preview?.items, isEmpty);

    await viewModel.confirmImport();
    expect(viewModel.phase, ImportStatementPhase.complete);
    expect(viewModel.result?.importedCount, 0);
  });
}

final class _FakeImportRepository implements StatementImportRepository {
  @override
  Future<StatementImportPreview?> selectAndPreview() async =>
      StatementImportPreview(
        sourceType: 'wechat_pay',
        fileName: 'wechat.xlsx',
        fileHash: 'hash',
        items: const [],
        warnings: const [],
      );

  @override
  Future<StatementImportResult> commit(StatementImportPreview preview) async =>
      const StatementImportResult(importedCount: 0, duplicateCount: 0);
}
