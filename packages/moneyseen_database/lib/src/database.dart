import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'stored_models.dart';

part 'database.g.dart';

class LedgerRows extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get type => text()();
  TextColumn get currency => text().withLength(min: 3, max: 3)();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  IntColumn get revision => integer().withDefault(const Constant(0))();
  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class AccountRows extends Table {
  TextColumn get id => text()();
  TextColumn get ledgerId => text().references(LedgerRows, #id)();
  TextColumn get name => text()();
  TextColumn get type => text()();
  TextColumn get currency => text().withLength(min: 3, max: 3)();
  TextColumn get institution => text().nullable()();
  TextColumn get maskedIdentifier => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  IntColumn get revision => integer().withDefault(const Constant(0))();
  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class ImportBatchRows extends Table {
  TextColumn get id => text()();
  TextColumn get accountId => text().references(AccountRows, #id)();
  TextColumn get sourceType => text()();
  TextColumn get fileName => text()();
  TextColumn get fileHash => text()();
  DateTimeColumn get statementStartAt => dateTime().nullable()();
  DateTimeColumn get statementEndAt => dateTime().nullable()();
  DateTimeColumn get importedAt => dateTime()();
  TextColumn get parserVersion => text()();
  IntColumn get recordCount => integer().withDefault(const Constant(0))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class TransactionRows extends Table {
  TextColumn get id => text()();
  TextColumn get ledgerId => text().references(LedgerRows, #id)();
  TextColumn get accountId => text().references(AccountRows, #id)();
  TextColumn get importBatchId => text().references(ImportBatchRows, #id)();
  TextColumn get sourceType => text()();
  TextColumn get sourceTransactionId => text().nullable()();
  TextColumn get deduplicationKey => text().unique()();
  DateTimeColumn get occurredAt => dateTime()();
  TextColumn get timezone => text()();
  TextColumn get rawDirection => text()();
  TextColumn get nature => text()();
  IntColumn get amountMinor => integer()();
  TextColumn get currency => text().withLength(min: 3, max: 3)();
  TextColumn get rawCounterparty => text()();
  TextColumn get description => text()();
  TextColumn get rawTransactionType => text()();
  TextColumn get status => text().nullable()();
  TextColumn get categoryId => text().nullable()();
  TextColumn get projectId => text().nullable()();
  TextColumn get classificationStatus => text()();
  TextColumn get classificationSource => text()();
  RealColumn get classificationConfidence => real().nullable()();
  TextColumn get classificationReason => text().nullable()();
  TextColumn get rawDataJson => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  IntColumn get revision => integer().withDefault(const Constant(0))();
  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

@DriftDatabase(
  tables: [LedgerRows, AccountRows, ImportBatchRows, TransactionRows],
)
class MoneySeenDatabase extends _$MoneySeenDatabase {
  MoneySeenDatabase(super.executor);

  factory MoneySeenDatabase.defaults({String name = 'moneyseen'}) =>
      MoneySeenDatabase(_openConnection(name));

  @override
  int get schemaVersion => 1;

  Future<void> ensureDefaultLedger({
    required String id,
    required String name,
    required String type,
    required String currency,
  }) async {
    final now = DateTime.now().toUtc();
    await into(ledgerRows).insert(
      LedgerRowsCompanion.insert(
        id: id,
        name: name,
        type: type,
        currency: currency,
        createdAt: now,
        updatedAt: now,
      ),
      mode: InsertMode.insertOrIgnore,
    );
  }

  Stream<List<StoredLedger>> watchLedgers() {
    final query = select(ledgerRows)
      ..where((row) => row.isDeleted.equals(false))
      ..orderBy([(row) => OrderingTerm.asc(row.createdAt)]);

    return query.watch().map(
      (rows) => rows
          .map(
            (row) => StoredLedger(
              id: row.id,
              name: row.name,
              type: row.type,
              currency: row.currency,
              createdAt: row.createdAt,
              updatedAt: row.updatedAt,
            ),
          )
          .toList(growable: false),
    );
  }
}

QueryExecutor _openConnection(String name) => driftDatabase(
  name: name,
  web: DriftWebOptions(
    sqlite3Wasm: Uri.parse('sqlite3.wasm'),
    driftWorker: Uri.parse('drift_worker.dart.js'),
  ),
);
