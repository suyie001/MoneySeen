import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moneyseen_database/moneyseen_database.dart';
import 'package:moneyseen_ui/moneyseen_ui.dart';

import '../ui/features/home/view_models/home_view_model.dart';
import '../ui/features/home/views/home_view.dart';
import '../ui/features/import_statement/view_models/import_statement_view_model.dart';

class MoneySeenApp extends StatefulWidget {
  const MoneySeenApp({
    required this.database,
    required this.homeViewModel,
    required this.importViewModel,
    super.key,
  });

  final MoneySeenDatabase database;
  final HomeViewModel homeViewModel;
  final ImportStatementViewModel importViewModel;

  @override
  State<MoneySeenApp> createState() => _MoneySeenAppState();
}

class _MoneySeenAppState extends State<MoneySeenApp> {
  @override
  void initState() {
    super.initState();
    unawaited(widget.homeViewModel.initialize());
  }

  @override
  void dispose() {
    widget.homeViewModel.dispose();
    widget.importViewModel.dispose();
    unawaited(widget.database.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'MoneySeen',
    debugShowCheckedModeBanner: false,
    theme: MoneySeenTheme.light(),
    home: HomeView(
      viewModel: widget.homeViewModel,
      importViewModel: widget.importViewModel,
    ),
  );
}
