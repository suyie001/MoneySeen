import 'package:flutter/widgets.dart';
import 'package:moneyseen_database/moneyseen_database.dart';

import 'app/app.dart';
import 'data/repositories/local_ledger_repository.dart';
import 'data/services/ledger_database_service.dart';
import 'ui/features/home/view_models/home_view_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final database = MoneySeenDatabase.defaults();
  final service = LedgerDatabaseService(database);
  final repository = LocalLedgerRepository(service);
  final homeViewModel = HomeViewModel(repository);

  runApp(MoneySeenApp(database: database, homeViewModel: homeViewModel));
}
