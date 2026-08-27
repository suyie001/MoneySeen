import 'dart:typed_data';

final class SyncCapabilities {
  const SyncCapabilities({
    required this.canList,
    required this.canDelete,
    required this.supportsAutomaticBackup,
  });

  final bool canList;
  final bool canDelete;
  final bool supportsAutomaticBackup;
}

final class LocalSnapshot {
  const LocalSnapshot({required this.name, required this.bytes});

  final String name;
  final Uint8List bytes;
}

final class RemoteSnapshot {
  const RemoteSnapshot({
    required this.id,
    required this.name,
    required this.updatedAt,
  });

  final String id;
  final String name;
  final DateTime updatedAt;
}

abstract interface class SyncProvider {
  Future<SyncCapabilities> capabilities();
  Future<List<RemoteSnapshot>> listSnapshots();
  Future<void> uploadSnapshot(LocalSnapshot snapshot);
  Future<LocalSnapshot> downloadSnapshot(String id);
  Future<void> deleteSnapshot(String id);
}
