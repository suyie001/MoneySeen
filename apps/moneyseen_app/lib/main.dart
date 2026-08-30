import 'package:flutter/widgets.dart';
import 'package:moneyseen_database/moneyseen_database.dart';
import 'package:moneyseen_importers/moneyseen_importers.dart';

import 'app/app.dart';
import 'data/repositories/local_ledger_repository.dart';
import 'data/repositories/local_statement_import_repository.dart';
import 'data/services/import_database_service.dart';
import 'data/services/ledger_database_service.dart';
import 'data/services/statement_file_picker_service.dart';
import 'ui/features/home/view_models/home_view_model.dart';
import 'ui/features/import_statement/view_models/import_statement_view_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final database = MoneySeenDatabase.defaults();
  final service = LedgerDatabaseService(database);
  final repository = LocalLedgerRepository(service);
  final homeViewModel = HomeViewModel(repository);
  final importRepository = LocalStatementImportRepository(
    const StatementFilePickerService(),
    const WeChatPayStatementImporter(),
    ImportDatabaseService(database),
  );
  final importViewModel = ImportStatementViewModel(importRepository);

  runApp(
    MoneySeenApp(
      database: database,
      homeViewModel: homeViewModel,
      importViewModel: importViewModel,
    ),
  );
}
