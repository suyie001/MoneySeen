import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moneyseen_database/moneyseen_database.dart';
import 'package:moneyseen_ui/moneyseen_ui.dart';

import '../ui/features/home/view_models/home_view_model.dart';
import '../ui/features/home/views/home_view.dart';

class MoneySeenApp extends StatefulWidget {
  const MoneySeenApp({
    required this.database,
    required this.homeViewModel,
    super.key,
  });

  final MoneySeenDatabase database;
  final HomeViewModel homeViewModel;

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
    unawaited(widget.database.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'MoneySeen',
    debugShowCheckedModeBanner: false,
    theme: MoneySeenTheme.light(),
    home: HomeView(viewModel: widget.homeViewModel),
  );
}
