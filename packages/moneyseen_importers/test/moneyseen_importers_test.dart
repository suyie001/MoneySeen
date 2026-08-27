import 'dart:typed_data';

import 'package:moneyseen_importers/moneyseen_importers.dart';
import 'package:test/test.dart';

void main() {
  test('statement files keep bytes in memory without a platform file type', () {
    final file = StatementFile(
      name: 'wechat.xlsx',
      bytes: Uint8List.fromList([1, 2, 3]),
    );

    expect(file.name, endsWith('.xlsx'));
    expect(file.bytes, hasLength(3));
  });
}
