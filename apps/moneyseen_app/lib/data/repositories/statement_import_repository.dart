import '../../domain/models/statement_import_preview.dart';

abstract interface class StatementImportRepository {
  Future<StatementImportPreview?> selectAndPreview();

  Future<StatementImportResult> commit(StatementImportPreview preview);
}
