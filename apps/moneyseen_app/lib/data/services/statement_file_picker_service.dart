import 'package:file_picker/file_picker.dart';
import 'package:moneyseen_importers/moneyseen_importers.dart';

abstract interface class StatementFilePicker {
  Future<StatementFile?> pickXlsx();
}

final class StatementFilePickerService implements StatementFilePicker {
  const StatementFilePickerService();

  @override
  Future<StatementFile?> pickXlsx() async {
    final pickedFile = await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: const ['xlsx'],
    );
    if (pickedFile == null) return null;
    final bytes = await pickedFile.readAsBytes();
    return StatementFile(name: pickedFile.name, bytes: bytes);
  }
}
