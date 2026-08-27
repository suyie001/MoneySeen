import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:moneyseen_domain/moneyseen_domain.dart';

import '../../../../data/repositories/ledger_repository.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._repository);

  final LedgerRepository _repository;

  StreamSubscription<List<Ledger>>? _subscription;
  List<Ledger> _ledgers = const [];
  Object? _error;
  bool _isLoading = true;
  bool _isInitialized = false;

  List<Ledger> get ledgers => List.unmodifiable(_ledgers);
  Object? get error => _error;
  bool get isLoading => _isLoading;

  Future<void> initialize() async {
    if (_isInitialized) return;
    _isInitialized = true;

    try {
      await _repository.ensureDefaultLedger();
      _subscription = _repository.watchLedgers().listen(
        (ledgers) {
          _ledgers = ledgers;
          _error = null;
          _isLoading = false;
          notifyListeners();
        },
        onError: (Object error, StackTrace stackTrace) {
          _error = error;
          _isLoading = false;
          notifyListeners();
        },
      );
    } on Object catch (error) {
      _error = error;
      _isLoading = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    unawaited(_subscription?.cancel());
    super.dispose();
  }
}
