import 'package:flutter/foundation.dart';

import '../../../../data/repositories/statement_import_repository.dart';
import '../../../../domain/models/statement_import_preview.dart';

enum ImportStatementPhase { idle, selecting, ready, importing, complete, error }

final class ImportStatementViewModel extends ChangeNotifier {
  ImportStatementViewModel(this._repository);

  final StatementImportRepository _repository;

  ImportStatementPhase _phase = ImportStatementPhase.idle;
  StatementImportPreview? _preview;
  StatementImportResult? _result;
  String? _errorMessage;

  ImportStatementPhase get phase => _phase;
  StatementImportPreview? get preview => _preview;
  StatementImportResult? get result => _result;
  String? get errorMessage => _errorMessage;
  bool get isBusy =>
      _phase == ImportStatementPhase.selecting ||
      _phase == ImportStatementPhase.importing;

  Future<void> selectFile() async {
    if (isBusy) return;
    _phase = ImportStatementPhase.selecting;
    _errorMessage = null;
    _result = null;
    notifyListeners();
    try {
      final selected = await _repository.selectAndPreview();
      if (selected == null) {
        _phase = _preview == null
            ? ImportStatementPhase.idle
            : ImportStatementPhase.ready;
      } else {
        _preview = selected;
        _phase = ImportStatementPhase.ready;
      }
    } on Object catch (error) {
      _errorMessage = _friendlyMessage(error);
      _phase = ImportStatementPhase.error;
    }
    notifyListeners();
  }

  Future<void> confirmImport() async {
    final currentPreview = _preview;
    if (currentPreview == null || isBusy) return;
    _phase = ImportStatementPhase.importing;
    _errorMessage = null;
    notifyListeners();
    try {
      _result = await _repository.commit(currentPreview);
      _phase = ImportStatementPhase.complete;
    } on Object catch (error) {
      _errorMessage = _friendlyMessage(error);
      _phase = ImportStatementPhase.error;
    }
    notifyListeners();
  }

  void reset() {
    if (isBusy) return;
    _phase = ImportStatementPhase.idle;
    _preview = null;
    _result = null;
    _errorMessage = null;
    notifyListeners();
  }
}

String _friendlyMessage(Object error) {
  if (error is FormatException) return error.message.toString();
  return '处理账单时出现问题，请检查文件后重试。';
}
