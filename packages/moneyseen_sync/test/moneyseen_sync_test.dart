import 'dart:typed_data';

import 'package:moneyseen_sync/moneyseen_sync.dart';
import 'package:test/test.dart';

void main() {
  test('local snapshots are transport independent', () {
    final snapshot = LocalSnapshot(
      name: 'backup.mseen',
      bytes: Uint8List.fromList([1, 2, 3]),
    );

    expect(snapshot.name, endsWith('.mseen'));
    expect(snapshot.bytes, hasLength(3));
  });
}
