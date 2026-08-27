// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $LedgerRowsTable extends LedgerRows
    with TableInfo<$LedgerRowsTable, LedgerRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LedgerRowsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 3,
      maxTextLength: 3,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _revisionMeta = const VerificationMeta(
    'revision',
  );
  @override
  late final GeneratedColumn<int> revision = GeneratedColumn<int>(
    'revision',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isDeletedMeta = const VerificationMeta(
    'isDeleted',
  );
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
    'is_deleted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_deleted" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    type,
    currency,
    createdAt,
    updatedAt,
    revision,
    isDeleted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ledger_rows';
  @override
  VerificationContext validateIntegrity(
    Insertable<LedgerRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('revision')) {
      context.handle(
        _revisionMeta,
        revision.isAcceptableOrUnknown(data['revision']!, _revisionMeta),
      );
    }
    if (data.containsKey('is_deleted')) {
      context.handle(
        _isDeletedMeta,
        isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LedgerRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LedgerRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      revision: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}revision'],
      )!,
      isDeleted: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_deleted'],
      )!,
    );
  }

  @override
  $LedgerRowsTable createAlias(String alias) {
    return $LedgerRowsTable(attachedDatabase, alias);
  }
}

class LedgerRow extends DataClass implements Insertable<LedgerRow> {
  final String id;
  final String name;
  final String type;
  final String currency;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int revision;
  final bool isDeleted;
  const LedgerRow({
    required this.id,
    required this.name,
    required this.type,
    required this.currency,
    required this.createdAt,
    required this.updatedAt,
    required this.revision,
    required this.isDeleted,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['currency'] = Variable<String>(currency);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['revision'] = Variable<int>(revision);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  LedgerRowsCompanion toCompanion(bool nullToAbsent) {
    return LedgerRowsCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
      currency: Value(currency),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      revision: Value(revision),
      isDeleted: Value(isDeleted),
    );
  }

  factory LedgerRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LedgerRow(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      currency: serializer.fromJson<String>(json['currency']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      revision: serializer.fromJson<int>(json['revision']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'currency': serializer.toJson<String>(currency),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'revision': serializer.toJson<int>(revision),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  LedgerRow copyWith({
    String? id,
    String? name,
    String? type,
    String? currency,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? revision,
    bool? isDeleted,
  }) => LedgerRow(
    id: id ?? this.id,
    name: name ?? this.name,
    type: type ?? this.type,
    currency: currency ?? this.currency,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    revision: revision ?? this.revision,
    isDeleted: isDeleted ?? this.isDeleted,
  );
  LedgerRow copyWithCompanion(LedgerRowsCompanion data) {
    return LedgerRow(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      currency: data.currency.present ? data.currency.value : this.currency,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      revision: data.revision.present ? data.revision.value : this.revision,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LedgerRow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('currency: $currency, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('revision: $revision, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    type,
    currency,
    createdAt,
    updatedAt,
    revision,
    isDeleted,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LedgerRow &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.currency == this.currency &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.revision == this.revision &&
          other.isDeleted == this.isDeleted);
}

class LedgerRowsCompanion extends UpdateCompanion<LedgerRow> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> type;
  final Value<String> currency;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> revision;
  final Value<bool> isDeleted;
  final Value<int> rowid;
  const LedgerRowsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.currency = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.revision = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LedgerRowsCompanion.insert({
    required String id,
    required String name,
    required String type,
    required String currency,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.revision = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       type = Value(type),
       currency = Value(currency),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<LedgerRow> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? currency,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? revision,
    Expression<bool>? isDeleted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (currency != null) 'currency': currency,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (revision != null) 'revision': revision,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LedgerRowsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? type,
    Value<String>? currency,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? revision,
    Value<bool>? isDeleted,
    Value<int>? rowid,
  }) {
    return LedgerRowsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      revision: revision ?? this.revision,
      isDeleted: isDeleted ?? this.isDeleted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (revision.present) {
      map['revision'] = Variable<int>(revision.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LedgerRowsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('currency: $currency, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('revision: $revision, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AccountRowsTable extends AccountRows
    with TableInfo<$AccountRowsTable, AccountRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountRowsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ledgerIdMeta = const VerificationMeta(
    'ledgerId',
  );
  @override
  late final GeneratedColumn<String> ledgerId = GeneratedColumn<String>(
    'ledger_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ledger_rows (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 3,
      maxTextLength: 3,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _institutionMeta = const VerificationMeta(
    'institution',
  );
  @override
  late final GeneratedColumn<String> institution = GeneratedColumn<String>(
    'institution',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _maskedIdentifierMeta = const VerificationMeta(
    'maskedIdentifier',
  );
  @override
  late final GeneratedColumn<String> maskedIdentifier = GeneratedColumn<String>(
    'masked_identifier',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _revisionMeta = const VerificationMeta(
    'revision',
  );
  @override
  late final GeneratedColumn<int> revision = GeneratedColumn<int>(
    'revision',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isDeletedMeta = const VerificationMeta(
    'isDeleted',
  );
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
    'is_deleted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_deleted" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    ledgerId,
    name,
    type,
    currency,
    institution,
    maskedIdentifier,
    createdAt,
    updatedAt,
    revision,
    isDeleted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'account_rows';
  @override
  VerificationContext validateIntegrity(
    Insertable<AccountRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ledger_id')) {
      context.handle(
        _ledgerIdMeta,
        ledgerId.isAcceptableOrUnknown(data['ledger_id']!, _ledgerIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ledgerIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('institution')) {
      context.handle(
        _institutionMeta,
        institution.isAcceptableOrUnknown(
          data['institution']!,
          _institutionMeta,
        ),
      );
    }
    if (data.containsKey('masked_identifier')) {
      context.handle(
        _maskedIdentifierMeta,
        maskedIdentifier.isAcceptableOrUnknown(
          data['masked_identifier']!,
          _maskedIdentifierMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('revision')) {
      context.handle(
        _revisionMeta,
        revision.isAcceptableOrUnknown(data['revision']!, _revisionMeta),
      );
    }
    if (data.containsKey('is_deleted')) {
      context.handle(
        _isDeletedMeta,
        isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AccountRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      ledgerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ledger_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      institution: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}institution'],
      ),
      maskedIdentifier: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}masked_identifier'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      revision: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}revision'],
      )!,
      isDeleted: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_deleted'],
      )!,
    );
  }

  @override
  $AccountRowsTable createAlias(String alias) {
    return $AccountRowsTable(attachedDatabase, alias);
  }
}

class AccountRow extends DataClass implements Insertable<AccountRow> {
  final String id;
  final String ledgerId;
  final String name;
  final String type;
  final String currency;
  final String? institution;
  final String? maskedIdentifier;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int revision;
  final bool isDeleted;
  const AccountRow({
    required this.id,
    required this.ledgerId,
    required this.name,
    required this.type,
    required this.currency,
    this.institution,
    this.maskedIdentifier,
    required this.createdAt,
    required this.updatedAt,
    required this.revision,
    required this.isDeleted,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['ledger_id'] = Variable<String>(ledgerId);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['currency'] = Variable<String>(currency);
    if (!nullToAbsent || institution != null) {
      map['institution'] = Variable<String>(institution);
    }
    if (!nullToAbsent || maskedIdentifier != null) {
      map['masked_identifier'] = Variable<String>(maskedIdentifier);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['revision'] = Variable<int>(revision);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  AccountRowsCompanion toCompanion(bool nullToAbsent) {
    return AccountRowsCompanion(
      id: Value(id),
      ledgerId: Value(ledgerId),
      name: Value(name),
      type: Value(type),
      currency: Value(currency),
      institution: institution == null && nullToAbsent
          ? const Value.absent()
          : Value(institution),
      maskedIdentifier: maskedIdentifier == null && nullToAbsent
          ? const Value.absent()
          : Value(maskedIdentifier),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      revision: Value(revision),
      isDeleted: Value(isDeleted),
    );
  }

  factory AccountRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AccountRow(
      id: serializer.fromJson<String>(json['id']),
      ledgerId: serializer.fromJson<String>(json['ledgerId']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      currency: serializer.fromJson<String>(json['currency']),
      institution: serializer.fromJson<String?>(json['institution']),
      maskedIdentifier: serializer.fromJson<String?>(json['maskedIdentifier']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      revision: serializer.fromJson<int>(json['revision']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'ledgerId': serializer.toJson<String>(ledgerId),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'currency': serializer.toJson<String>(currency),
      'institution': serializer.toJson<String?>(institution),
      'maskedIdentifier': serializer.toJson<String?>(maskedIdentifier),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'revision': serializer.toJson<int>(revision),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  AccountRow copyWith({
    String? id,
    String? ledgerId,
    String? name,
    String? type,
    String? currency,
    Value<String?> institution = const Value.absent(),
    Value<String?> maskedIdentifier = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    int? revision,
    bool? isDeleted,
  }) => AccountRow(
    id: id ?? this.id,
    ledgerId: ledgerId ?? this.ledgerId,
    name: name ?? this.name,
    type: type ?? this.type,
    currency: currency ?? this.currency,
    institution: institution.present ? institution.value : this.institution,
    maskedIdentifier: maskedIdentifier.present
        ? maskedIdentifier.value
        : this.maskedIdentifier,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    revision: revision ?? this.revision,
    isDeleted: isDeleted ?? this.isDeleted,
  );
  AccountRow copyWithCompanion(AccountRowsCompanion data) {
    return AccountRow(
      id: data.id.present ? data.id.value : this.id,
      ledgerId: data.ledgerId.present ? data.ledgerId.value : this.ledgerId,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      currency: data.currency.present ? data.currency.value : this.currency,
      institution: data.institution.present
          ? data.institution.value
          : this.institution,
      maskedIdentifier: data.maskedIdentifier.present
          ? data.maskedIdentifier.value
          : this.maskedIdentifier,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      revision: data.revision.present ? data.revision.value : this.revision,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AccountRow(')
          ..write('id: $id, ')
          ..write('ledgerId: $ledgerId, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('currency: $currency, ')
          ..write('institution: $institution, ')
          ..write('maskedIdentifier: $maskedIdentifier, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('revision: $revision, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    ledgerId,
    name,
    type,
    currency,
    institution,
    maskedIdentifier,
    createdAt,
    updatedAt,
    revision,
    isDeleted,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AccountRow &&
          other.id == this.id &&
          other.ledgerId == this.ledgerId &&
          other.name == this.name &&
          other.type == this.type &&
          other.currency == this.currency &&
          other.institution == this.institution &&
          other.maskedIdentifier == this.maskedIdentifier &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.revision == this.revision &&
          other.isDeleted == this.isDeleted);
}

class AccountRowsCompanion extends UpdateCompanion<AccountRow> {
  final Value<String> id;
  final Value<String> ledgerId;
  final Value<String> name;
  final Value<String> type;
  final Value<String> currency;
  final Value<String?> institution;
  final Value<String?> maskedIdentifier;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> revision;
  final Value<bool> isDeleted;
  final Value<int> rowid;
  const AccountRowsCompanion({
    this.id = const Value.absent(),
    this.ledgerId = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.currency = const Value.absent(),
    this.institution = const Value.absent(),
    this.maskedIdentifier = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.revision = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AccountRowsCompanion.insert({
    required String id,
    required String ledgerId,
    required String name,
    required String type,
    required String currency,
    this.institution = const Value.absent(),
    this.maskedIdentifier = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.revision = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       ledgerId = Value(ledgerId),
       name = Value(name),
       type = Value(type),
       currency = Value(currency),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<AccountRow> custom({
    Expression<String>? id,
    Expression<String>? ledgerId,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? currency,
    Expression<String>? institution,
    Expression<String>? maskedIdentifier,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? revision,
    Expression<bool>? isDeleted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ledgerId != null) 'ledger_id': ledgerId,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (currency != null) 'currency': currency,
      if (institution != null) 'institution': institution,
      if (maskedIdentifier != null) 'masked_identifier': maskedIdentifier,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (revision != null) 'revision': revision,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AccountRowsCompanion copyWith({
    Value<String>? id,
    Value<String>? ledgerId,
    Value<String>? name,
    Value<String>? type,
    Value<String>? currency,
    Value<String?>? institution,
    Value<String?>? maskedIdentifier,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? revision,
    Value<bool>? isDeleted,
    Value<int>? rowid,
  }) {
    return AccountRowsCompanion(
      id: id ?? this.id,
      ledgerId: ledgerId ?? this.ledgerId,
      name: name ?? this.name,
      type: type ?? this.type,
      currency: currency ?? this.currency,
      institution: institution ?? this.institution,
      maskedIdentifier: maskedIdentifier ?? this.maskedIdentifier,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      revision: revision ?? this.revision,
      isDeleted: isDeleted ?? this.isDeleted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (ledgerId.present) {
      map['ledger_id'] = Variable<String>(ledgerId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (institution.present) {
      map['institution'] = Variable<String>(institution.value);
    }
    if (maskedIdentifier.present) {
      map['masked_identifier'] = Variable<String>(maskedIdentifier.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (revision.present) {
      map['revision'] = Variable<int>(revision.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountRowsCompanion(')
          ..write('id: $id, ')
          ..write('ledgerId: $ledgerId, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('currency: $currency, ')
          ..write('institution: $institution, ')
          ..write('maskedIdentifier: $maskedIdentifier, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('revision: $revision, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ImportBatchRowsTable extends ImportBatchRows
    with TableInfo<$ImportBatchRowsTable, ImportBatchRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ImportBatchRowsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _accountIdMeta = const VerificationMeta(
    'accountId',
  );
  @override
  late final GeneratedColumn<String> accountId = GeneratedColumn<String>(
    'account_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES account_rows (id)',
    ),
  );
  static const VerificationMeta _sourceTypeMeta = const VerificationMeta(
    'sourceType',
  );
  @override
  late final GeneratedColumn<String> sourceType = GeneratedColumn<String>(
    'source_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fileNameMeta = const VerificationMeta(
    'fileName',
  );
  @override
  late final GeneratedColumn<String> fileName = GeneratedColumn<String>(
    'file_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fileHashMeta = const VerificationMeta(
    'fileHash',
  );
  @override
  late final GeneratedColumn<String> fileHash = GeneratedColumn<String>(
    'file_hash',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statementStartAtMeta = const VerificationMeta(
    'statementStartAt',
  );
  @override
  late final GeneratedColumn<DateTime> statementStartAt =
      GeneratedColumn<DateTime>(
        'statement_start_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _statementEndAtMeta = const VerificationMeta(
    'statementEndAt',
  );
  @override
  late final GeneratedColumn<DateTime> statementEndAt =
      GeneratedColumn<DateTime>(
        'statement_end_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _importedAtMeta = const VerificationMeta(
    'importedAt',
  );
  @override
  late final GeneratedColumn<DateTime> importedAt = GeneratedColumn<DateTime>(
    'imported_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _parserVersionMeta = const VerificationMeta(
    'parserVersion',
  );
  @override
  late final GeneratedColumn<String> parserVersion = GeneratedColumn<String>(
    'parser_version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recordCountMeta = const VerificationMeta(
    'recordCount',
  );
  @override
  late final GeneratedColumn<int> recordCount = GeneratedColumn<int>(
    'record_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    accountId,
    sourceType,
    fileName,
    fileHash,
    statementStartAt,
    statementEndAt,
    importedAt,
    parserVersion,
    recordCount,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'import_batch_rows';
  @override
  VerificationContext validateIntegrity(
    Insertable<ImportBatchRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('account_id')) {
      context.handle(
        _accountIdMeta,
        accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta),
      );
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    if (data.containsKey('source_type')) {
      context.handle(
        _sourceTypeMeta,
        sourceType.isAcceptableOrUnknown(data['source_type']!, _sourceTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_sourceTypeMeta);
    }
    if (data.containsKey('file_name')) {
      context.handle(
        _fileNameMeta,
        fileName.isAcceptableOrUnknown(data['file_name']!, _fileNameMeta),
      );
    } else if (isInserting) {
      context.missing(_fileNameMeta);
    }
    if (data.containsKey('file_hash')) {
      context.handle(
        _fileHashMeta,
        fileHash.isAcceptableOrUnknown(data['file_hash']!, _fileHashMeta),
      );
    } else if (isInserting) {
      context.missing(_fileHashMeta);
    }
    if (data.containsKey('statement_start_at')) {
      context.handle(
        _statementStartAtMeta,
        statementStartAt.isAcceptableOrUnknown(
          data['statement_start_at']!,
          _statementStartAtMeta,
        ),
      );
    }
    if (data.containsKey('statement_end_at')) {
      context.handle(
        _statementEndAtMeta,
        statementEndAt.isAcceptableOrUnknown(
          data['statement_end_at']!,
          _statementEndAtMeta,
        ),
      );
    }
    if (data.containsKey('imported_at')) {
      context.handle(
        _importedAtMeta,
        importedAt.isAcceptableOrUnknown(data['imported_at']!, _importedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_importedAtMeta);
    }
    if (data.containsKey('parser_version')) {
      context.handle(
        _parserVersionMeta,
        parserVersion.isAcceptableOrUnknown(
          data['parser_version']!,
          _parserVersionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_parserVersionMeta);
    }
    if (data.containsKey('record_count')) {
      context.handle(
        _recordCountMeta,
        recordCount.isAcceptableOrUnknown(
          data['record_count']!,
          _recordCountMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ImportBatchRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ImportBatchRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      accountId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}account_id'],
      )!,
      sourceType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_type'],
      )!,
      fileName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_name'],
      )!,
      fileHash: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_hash'],
      )!,
      statementStartAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}statement_start_at'],
      ),
      statementEndAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}statement_end_at'],
      ),
      importedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}imported_at'],
      )!,
      parserVersion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parser_version'],
      )!,
      recordCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_count'],
      )!,
    );
  }

  @override
  $ImportBatchRowsTable createAlias(String alias) {
    return $ImportBatchRowsTable(attachedDatabase, alias);
  }
}

class ImportBatchRow extends DataClass implements Insertable<ImportBatchRow> {
  final String id;
  final String accountId;
  final String sourceType;
  final String fileName;
  final String fileHash;
  final DateTime? statementStartAt;
  final DateTime? statementEndAt;
  final DateTime importedAt;
  final String parserVersion;
  final int recordCount;
  const ImportBatchRow({
    required this.id,
    required this.accountId,
    required this.sourceType,
    required this.fileName,
    required this.fileHash,
    this.statementStartAt,
    this.statementEndAt,
    required this.importedAt,
    required this.parserVersion,
    required this.recordCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['account_id'] = Variable<String>(accountId);
    map['source_type'] = Variable<String>(sourceType);
    map['file_name'] = Variable<String>(fileName);
    map['file_hash'] = Variable<String>(fileHash);
    if (!nullToAbsent || statementStartAt != null) {
      map['statement_start_at'] = Variable<DateTime>(statementStartAt);
    }
    if (!nullToAbsent || statementEndAt != null) {
      map['statement_end_at'] = Variable<DateTime>(statementEndAt);
    }
    map['imported_at'] = Variable<DateTime>(importedAt);
    map['parser_version'] = Variable<String>(parserVersion);
    map['record_count'] = Variable<int>(recordCount);
    return map;
  }

  ImportBatchRowsCompanion toCompanion(bool nullToAbsent) {
    return ImportBatchRowsCompanion(
      id: Value(id),
      accountId: Value(accountId),
      sourceType: Value(sourceType),
      fileName: Value(fileName),
      fileHash: Value(fileHash),
      statementStartAt: statementStartAt == null && nullToAbsent
          ? const Value.absent()
          : Value(statementStartAt),
      statementEndAt: statementEndAt == null && nullToAbsent
          ? const Value.absent()
          : Value(statementEndAt),
      importedAt: Value(importedAt),
      parserVersion: Value(parserVersion),
      recordCount: Value(recordCount),
    );
  }

  factory ImportBatchRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ImportBatchRow(
      id: serializer.fromJson<String>(json['id']),
      accountId: serializer.fromJson<String>(json['accountId']),
      sourceType: serializer.fromJson<String>(json['sourceType']),
      fileName: serializer.fromJson<String>(json['fileName']),
      fileHash: serializer.fromJson<String>(json['fileHash']),
      statementStartAt: serializer.fromJson<DateTime?>(
        json['statementStartAt'],
      ),
      statementEndAt: serializer.fromJson<DateTime?>(json['statementEndAt']),
      importedAt: serializer.fromJson<DateTime>(json['importedAt']),
      parserVersion: serializer.fromJson<String>(json['parserVersion']),
      recordCount: serializer.fromJson<int>(json['recordCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'accountId': serializer.toJson<String>(accountId),
      'sourceType': serializer.toJson<String>(sourceType),
      'fileName': serializer.toJson<String>(fileName),
      'fileHash': serializer.toJson<String>(fileHash),
      'statementStartAt': serializer.toJson<DateTime?>(statementStartAt),
      'statementEndAt': serializer.toJson<DateTime?>(statementEndAt),
      'importedAt': serializer.toJson<DateTime>(importedAt),
      'parserVersion': serializer.toJson<String>(parserVersion),
      'recordCount': serializer.toJson<int>(recordCount),
    };
  }

  ImportBatchRow copyWith({
    String? id,
    String? accountId,
    String? sourceType,
    String? fileName,
    String? fileHash,
    Value<DateTime?> statementStartAt = const Value.absent(),
    Value<DateTime?> statementEndAt = const Value.absent(),
    DateTime? importedAt,
    String? parserVersion,
    int? recordCount,
  }) => ImportBatchRow(
    id: id ?? this.id,
    accountId: accountId ?? this.accountId,
    sourceType: sourceType ?? this.sourceType,
    fileName: fileName ?? this.fileName,
    fileHash: fileHash ?? this.fileHash,
    statementStartAt: statementStartAt.present
        ? statementStartAt.value
        : this.statementStartAt,
    statementEndAt: statementEndAt.present
        ? statementEndAt.value
        : this.statementEndAt,
    importedAt: importedAt ?? this.importedAt,
    parserVersion: parserVersion ?? this.parserVersion,
    recordCount: recordCount ?? this.recordCount,
  );
  ImportBatchRow copyWithCompanion(ImportBatchRowsCompanion data) {
    return ImportBatchRow(
      id: data.id.present ? data.id.value : this.id,
      accountId: data.accountId.present ? data.accountId.value : this.accountId,
      sourceType: data.sourceType.present
          ? data.sourceType.value
          : this.sourceType,
      fileName: data.fileName.present ? data.fileName.value : this.fileName,
      fileHash: data.fileHash.present ? data.fileHash.value : this.fileHash,
      statementStartAt: data.statementStartAt.present
          ? data.statementStartAt.value
          : this.statementStartAt,
      statementEndAt: data.statementEndAt.present
          ? data.statementEndAt.value
          : this.statementEndAt,
      importedAt: data.importedAt.present
          ? data.importedAt.value
          : this.importedAt,
      parserVersion: data.parserVersion.present
          ? data.parserVersion.value
          : this.parserVersion,
      recordCount: data.recordCount.present
          ? data.recordCount.value
          : this.recordCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ImportBatchRow(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('sourceType: $sourceType, ')
          ..write('fileName: $fileName, ')
          ..write('fileHash: $fileHash, ')
          ..write('statementStartAt: $statementStartAt, ')
          ..write('statementEndAt: $statementEndAt, ')
          ..write('importedAt: $importedAt, ')
          ..write('parserVersion: $parserVersion, ')
          ..write('recordCount: $recordCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    accountId,
    sourceType,
    fileName,
    fileHash,
    statementStartAt,
    statementEndAt,
    importedAt,
    parserVersion,
    recordCount,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImportBatchRow &&
          other.id == this.id &&
          other.accountId == this.accountId &&
          other.sourceType == this.sourceType &&
          other.fileName == this.fileName &&
          other.fileHash == this.fileHash &&
          other.statementStartAt == this.statementStartAt &&
          other.statementEndAt == this.statementEndAt &&
          other.importedAt == this.importedAt &&
          other.parserVersion == this.parserVersion &&
          other.recordCount == this.recordCount);
}

class ImportBatchRowsCompanion extends UpdateCompanion<ImportBatchRow> {
  final Value<String> id;
  final Value<String> accountId;
  final Value<String> sourceType;
  final Value<String> fileName;
  final Value<String> fileHash;
  final Value<DateTime?> statementStartAt;
  final Value<DateTime?> statementEndAt;
  final Value<DateTime> importedAt;
  final Value<String> parserVersion;
  final Value<int> recordCount;
  final Value<int> rowid;
  const ImportBatchRowsCompanion({
    this.id = const Value.absent(),
    this.accountId = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.fileName = const Value.absent(),
    this.fileHash = const Value.absent(),
    this.statementStartAt = const Value.absent(),
    this.statementEndAt = const Value.absent(),
    this.importedAt = const Value.absent(),
    this.parserVersion = const Value.absent(),
    this.recordCount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ImportBatchRowsCompanion.insert({
    required String id,
    required String accountId,
    required String sourceType,
    required String fileName,
    required String fileHash,
    this.statementStartAt = const Value.absent(),
    this.statementEndAt = const Value.absent(),
    required DateTime importedAt,
    required String parserVersion,
    this.recordCount = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       accountId = Value(accountId),
       sourceType = Value(sourceType),
       fileName = Value(fileName),
       fileHash = Value(fileHash),
       importedAt = Value(importedAt),
       parserVersion = Value(parserVersion);
  static Insertable<ImportBatchRow> custom({
    Expression<String>? id,
    Expression<String>? accountId,
    Expression<String>? sourceType,
    Expression<String>? fileName,
    Expression<String>? fileHash,
    Expression<DateTime>? statementStartAt,
    Expression<DateTime>? statementEndAt,
    Expression<DateTime>? importedAt,
    Expression<String>? parserVersion,
    Expression<int>? recordCount,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accountId != null) 'account_id': accountId,
      if (sourceType != null) 'source_type': sourceType,
      if (fileName != null) 'file_name': fileName,
      if (fileHash != null) 'file_hash': fileHash,
      if (statementStartAt != null) 'statement_start_at': statementStartAt,
      if (statementEndAt != null) 'statement_end_at': statementEndAt,
      if (importedAt != null) 'imported_at': importedAt,
      if (parserVersion != null) 'parser_version': parserVersion,
      if (recordCount != null) 'record_count': recordCount,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ImportBatchRowsCompanion copyWith({
    Value<String>? id,
    Value<String>? accountId,
    Value<String>? sourceType,
    Value<String>? fileName,
    Value<String>? fileHash,
    Value<DateTime?>? statementStartAt,
    Value<DateTime?>? statementEndAt,
    Value<DateTime>? importedAt,
    Value<String>? parserVersion,
    Value<int>? recordCount,
    Value<int>? rowid,
  }) {
    return ImportBatchRowsCompanion(
      id: id ?? this.id,
      accountId: accountId ?? this.accountId,
      sourceType: sourceType ?? this.sourceType,
      fileName: fileName ?? this.fileName,
      fileHash: fileHash ?? this.fileHash,
      statementStartAt: statementStartAt ?? this.statementStartAt,
      statementEndAt: statementEndAt ?? this.statementEndAt,
      importedAt: importedAt ?? this.importedAt,
      parserVersion: parserVersion ?? this.parserVersion,
      recordCount: recordCount ?? this.recordCount,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<String>(accountId.value);
    }
    if (sourceType.present) {
      map['source_type'] = Variable<String>(sourceType.value);
    }
    if (fileName.present) {
      map['file_name'] = Variable<String>(fileName.value);
    }
    if (fileHash.present) {
      map['file_hash'] = Variable<String>(fileHash.value);
    }
    if (statementStartAt.present) {
      map['statement_start_at'] = Variable<DateTime>(statementStartAt.value);
    }
    if (statementEndAt.present) {
      map['statement_end_at'] = Variable<DateTime>(statementEndAt.value);
    }
    if (importedAt.present) {
      map['imported_at'] = Variable<DateTime>(importedAt.value);
    }
    if (parserVersion.present) {
      map['parser_version'] = Variable<String>(parserVersion.value);
    }
    if (recordCount.present) {
      map['record_count'] = Variable<int>(recordCount.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ImportBatchRowsCompanion(')
          ..write('id: $id, ')
          ..write('accountId: $accountId, ')
          ..write('sourceType: $sourceType, ')
          ..write('fileName: $fileName, ')
          ..write('fileHash: $fileHash, ')
          ..write('statementStartAt: $statementStartAt, ')
          ..write('statementEndAt: $statementEndAt, ')
          ..write('importedAt: $importedAt, ')
          ..write('parserVersion: $parserVersion, ')
          ..write('recordCount: $recordCount, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TransactionRowsTable extends TransactionRows
    with TableInfo<$TransactionRowsTable, TransactionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionRowsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ledgerIdMeta = const VerificationMeta(
    'ledgerId',
  );
  @override
  late final GeneratedColumn<String> ledgerId = GeneratedColumn<String>(
    'ledger_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ledger_rows (id)',
    ),
  );
  static const VerificationMeta _accountIdMeta = const VerificationMeta(
    'accountId',
  );
  @override
  late final GeneratedColumn<String> accountId = GeneratedColumn<String>(
    'account_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES account_rows (id)',
    ),
  );
  static const VerificationMeta _importBatchIdMeta = const VerificationMeta(
    'importBatchId',
  );
  @override
  late final GeneratedColumn<String> importBatchId = GeneratedColumn<String>(
    'import_batch_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES import_batch_rows (id)',
    ),
  );
  static const VerificationMeta _sourceTypeMeta = const VerificationMeta(
    'sourceType',
  );
  @override
  late final GeneratedColumn<String> sourceType = GeneratedColumn<String>(
    'source_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sourceTransactionIdMeta =
      const VerificationMeta('sourceTransactionId');
  @override
  late final GeneratedColumn<String> sourceTransactionId =
      GeneratedColumn<String>(
        'source_transaction_id',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _deduplicationKeyMeta = const VerificationMeta(
    'deduplicationKey',
  );
  @override
  late final GeneratedColumn<String> deduplicationKey = GeneratedColumn<String>(
    'deduplication_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _occurredAtMeta = const VerificationMeta(
    'occurredAt',
  );
  @override
  late final GeneratedColumn<DateTime> occurredAt = GeneratedColumn<DateTime>(
    'occurred_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timezoneMeta = const VerificationMeta(
    'timezone',
  );
  @override
  late final GeneratedColumn<String> timezone = GeneratedColumn<String>(
    'timezone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rawDirectionMeta = const VerificationMeta(
    'rawDirection',
  );
  @override
  late final GeneratedColumn<String> rawDirection = GeneratedColumn<String>(
    'raw_direction',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _natureMeta = const VerificationMeta('nature');
  @override
  late final GeneratedColumn<String> nature = GeneratedColumn<String>(
    'nature',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMinorMeta = const VerificationMeta(
    'amountMinor',
  );
  @override
  late final GeneratedColumn<int> amountMinor = GeneratedColumn<int>(
    'amount_minor',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 3,
      maxTextLength: 3,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rawCounterpartyMeta = const VerificationMeta(
    'rawCounterparty',
  );
  @override
  late final GeneratedColumn<String> rawCounterparty = GeneratedColumn<String>(
    'raw_counterparty',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rawTransactionTypeMeta =
      const VerificationMeta('rawTransactionType');
  @override
  late final GeneratedColumn<String> rawTransactionType =
      GeneratedColumn<String>(
        'raw_transaction_type',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
    'category_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<String> projectId = GeneratedColumn<String>(
    'project_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _classificationStatusMeta =
      const VerificationMeta('classificationStatus');
  @override
  late final GeneratedColumn<String> classificationStatus =
      GeneratedColumn<String>(
        'classification_status',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _classificationSourceMeta =
      const VerificationMeta('classificationSource');
  @override
  late final GeneratedColumn<String> classificationSource =
      GeneratedColumn<String>(
        'classification_source',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _classificationConfidenceMeta =
      const VerificationMeta('classificationConfidence');
  @override
  late final GeneratedColumn<double> classificationConfidence =
      GeneratedColumn<double>(
        'classification_confidence',
        aliasedName,
        true,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _classificationReasonMeta =
      const VerificationMeta('classificationReason');
  @override
  late final GeneratedColumn<String> classificationReason =
      GeneratedColumn<String>(
        'classification_reason',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _rawDataJsonMeta = const VerificationMeta(
    'rawDataJson',
  );
  @override
  late final GeneratedColumn<String> rawDataJson = GeneratedColumn<String>(
    'raw_data_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _revisionMeta = const VerificationMeta(
    'revision',
  );
  @override
  late final GeneratedColumn<int> revision = GeneratedColumn<int>(
    'revision',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isDeletedMeta = const VerificationMeta(
    'isDeleted',
  );
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
    'is_deleted',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_deleted" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    ledgerId,
    accountId,
    importBatchId,
    sourceType,
    sourceTransactionId,
    deduplicationKey,
    occurredAt,
    timezone,
    rawDirection,
    nature,
    amountMinor,
    currency,
    rawCounterparty,
    description,
    rawTransactionType,
    status,
    categoryId,
    projectId,
    classificationStatus,
    classificationSource,
    classificationConfidence,
    classificationReason,
    rawDataJson,
    createdAt,
    updatedAt,
    revision,
    isDeleted,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaction_rows';
  @override
  VerificationContext validateIntegrity(
    Insertable<TransactionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ledger_id')) {
      context.handle(
        _ledgerIdMeta,
        ledgerId.isAcceptableOrUnknown(data['ledger_id']!, _ledgerIdMeta),
      );
    } else if (isInserting) {
      context.missing(_ledgerIdMeta);
    }
    if (data.containsKey('account_id')) {
      context.handle(
        _accountIdMeta,
        accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta),
      );
    } else if (isInserting) {
      context.missing(_accountIdMeta);
    }
    if (data.containsKey('import_batch_id')) {
      context.handle(
        _importBatchIdMeta,
        importBatchId.isAcceptableOrUnknown(
          data['import_batch_id']!,
          _importBatchIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_importBatchIdMeta);
    }
    if (data.containsKey('source_type')) {
      context.handle(
        _sourceTypeMeta,
        sourceType.isAcceptableOrUnknown(data['source_type']!, _sourceTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_sourceTypeMeta);
    }
    if (data.containsKey('source_transaction_id')) {
      context.handle(
        _sourceTransactionIdMeta,
        sourceTransactionId.isAcceptableOrUnknown(
          data['source_transaction_id']!,
          _sourceTransactionIdMeta,
        ),
      );
    }
    if (data.containsKey('deduplication_key')) {
      context.handle(
        _deduplicationKeyMeta,
        deduplicationKey.isAcceptableOrUnknown(
          data['deduplication_key']!,
          _deduplicationKeyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_deduplicationKeyMeta);
    }
    if (data.containsKey('occurred_at')) {
      context.handle(
        _occurredAtMeta,
        occurredAt.isAcceptableOrUnknown(data['occurred_at']!, _occurredAtMeta),
      );
    } else if (isInserting) {
      context.missing(_occurredAtMeta);
    }
    if (data.containsKey('timezone')) {
      context.handle(
        _timezoneMeta,
        timezone.isAcceptableOrUnknown(data['timezone']!, _timezoneMeta),
      );
    } else if (isInserting) {
      context.missing(_timezoneMeta);
    }
    if (data.containsKey('raw_direction')) {
      context.handle(
        _rawDirectionMeta,
        rawDirection.isAcceptableOrUnknown(
          data['raw_direction']!,
          _rawDirectionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_rawDirectionMeta);
    }
    if (data.containsKey('nature')) {
      context.handle(
        _natureMeta,
        nature.isAcceptableOrUnknown(data['nature']!, _natureMeta),
      );
    } else if (isInserting) {
      context.missing(_natureMeta);
    }
    if (data.containsKey('amount_minor')) {
      context.handle(
        _amountMinorMeta,
        amountMinor.isAcceptableOrUnknown(
          data['amount_minor']!,
          _amountMinorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_amountMinorMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('raw_counterparty')) {
      context.handle(
        _rawCounterpartyMeta,
        rawCounterparty.isAcceptableOrUnknown(
          data['raw_counterparty']!,
          _rawCounterpartyMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_rawCounterpartyMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('raw_transaction_type')) {
      context.handle(
        _rawTransactionTypeMeta,
        rawTransactionType.isAcceptableOrUnknown(
          data['raw_transaction_type']!,
          _rawTransactionTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_rawTransactionTypeMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    }
    if (data.containsKey('classification_status')) {
      context.handle(
        _classificationStatusMeta,
        classificationStatus.isAcceptableOrUnknown(
          data['classification_status']!,
          _classificationStatusMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_classificationStatusMeta);
    }
    if (data.containsKey('classification_source')) {
      context.handle(
        _classificationSourceMeta,
        classificationSource.isAcceptableOrUnknown(
          data['classification_source']!,
          _classificationSourceMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_classificationSourceMeta);
    }
    if (data.containsKey('classification_confidence')) {
      context.handle(
        _classificationConfidenceMeta,
        classificationConfidence.isAcceptableOrUnknown(
          data['classification_confidence']!,
          _classificationConfidenceMeta,
        ),
      );
    }
    if (data.containsKey('classification_reason')) {
      context.handle(
        _classificationReasonMeta,
        classificationReason.isAcceptableOrUnknown(
          data['classification_reason']!,
          _classificationReasonMeta,
        ),
      );
    }
    if (data.containsKey('raw_data_json')) {
      context.handle(
        _rawDataJsonMeta,
        rawDataJson.isAcceptableOrUnknown(
          data['raw_data_json']!,
          _rawDataJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_rawDataJsonMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('revision')) {
      context.handle(
        _revisionMeta,
        revision.isAcceptableOrUnknown(data['revision']!, _revisionMeta),
      );
    }
    if (data.containsKey('is_deleted')) {
      context.handle(
        _isDeletedMeta,
        isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TransactionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TransactionRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      ledgerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ledger_id'],
      )!,
      accountId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}account_id'],
      )!,
      importBatchId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}import_batch_id'],
      )!,
      sourceType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_type'],
      )!,
      sourceTransactionId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_transaction_id'],
      ),
      deduplicationKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deduplication_key'],
      )!,
      occurredAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}occurred_at'],
      )!,
      timezone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}timezone'],
      )!,
      rawDirection: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}raw_direction'],
      )!,
      nature: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nature'],
      )!,
      amountMinor: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount_minor'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      rawCounterparty: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}raw_counterparty'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      rawTransactionType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}raw_transaction_type'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      ),
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category_id'],
      ),
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}project_id'],
      ),
      classificationStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}classification_status'],
      )!,
      classificationSource: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}classification_source'],
      )!,
      classificationConfidence: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}classification_confidence'],
      ),
      classificationReason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}classification_reason'],
      ),
      rawDataJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}raw_data_json'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      revision: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}revision'],
      )!,
      isDeleted: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_deleted'],
      )!,
    );
  }

  @override
  $TransactionRowsTable createAlias(String alias) {
    return $TransactionRowsTable(attachedDatabase, alias);
  }
}

class TransactionRow extends DataClass implements Insertable<TransactionRow> {
  final String id;
  final String ledgerId;
  final String accountId;
  final String importBatchId;
  final String sourceType;
  final String? sourceTransactionId;
  final String deduplicationKey;
  final DateTime occurredAt;
  final String timezone;
  final String rawDirection;
  final String nature;
  final int amountMinor;
  final String currency;
  final String rawCounterparty;
  final String description;
  final String rawTransactionType;
  final String? status;
  final String? categoryId;
  final String? projectId;
  final String classificationStatus;
  final String classificationSource;
  final double? classificationConfidence;
  final String? classificationReason;
  final String rawDataJson;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int revision;
  final bool isDeleted;
  const TransactionRow({
    required this.id,
    required this.ledgerId,
    required this.accountId,
    required this.importBatchId,
    required this.sourceType,
    this.sourceTransactionId,
    required this.deduplicationKey,
    required this.occurredAt,
    required this.timezone,
    required this.rawDirection,
    required this.nature,
    required this.amountMinor,
    required this.currency,
    required this.rawCounterparty,
    required this.description,
    required this.rawTransactionType,
    this.status,
    this.categoryId,
    this.projectId,
    required this.classificationStatus,
    required this.classificationSource,
    this.classificationConfidence,
    this.classificationReason,
    required this.rawDataJson,
    required this.createdAt,
    required this.updatedAt,
    required this.revision,
    required this.isDeleted,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['ledger_id'] = Variable<String>(ledgerId);
    map['account_id'] = Variable<String>(accountId);
    map['import_batch_id'] = Variable<String>(importBatchId);
    map['source_type'] = Variable<String>(sourceType);
    if (!nullToAbsent || sourceTransactionId != null) {
      map['source_transaction_id'] = Variable<String>(sourceTransactionId);
    }
    map['deduplication_key'] = Variable<String>(deduplicationKey);
    map['occurred_at'] = Variable<DateTime>(occurredAt);
    map['timezone'] = Variable<String>(timezone);
    map['raw_direction'] = Variable<String>(rawDirection);
    map['nature'] = Variable<String>(nature);
    map['amount_minor'] = Variable<int>(amountMinor);
    map['currency'] = Variable<String>(currency);
    map['raw_counterparty'] = Variable<String>(rawCounterparty);
    map['description'] = Variable<String>(description);
    map['raw_transaction_type'] = Variable<String>(rawTransactionType);
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<String>(categoryId);
    }
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<String>(projectId);
    }
    map['classification_status'] = Variable<String>(classificationStatus);
    map['classification_source'] = Variable<String>(classificationSource);
    if (!nullToAbsent || classificationConfidence != null) {
      map['classification_confidence'] = Variable<double>(
        classificationConfidence,
      );
    }
    if (!nullToAbsent || classificationReason != null) {
      map['classification_reason'] = Variable<String>(classificationReason);
    }
    map['raw_data_json'] = Variable<String>(rawDataJson);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['revision'] = Variable<int>(revision);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  TransactionRowsCompanion toCompanion(bool nullToAbsent) {
    return TransactionRowsCompanion(
      id: Value(id),
      ledgerId: Value(ledgerId),
      accountId: Value(accountId),
      importBatchId: Value(importBatchId),
      sourceType: Value(sourceType),
      sourceTransactionId: sourceTransactionId == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceTransactionId),
      deduplicationKey: Value(deduplicationKey),
      occurredAt: Value(occurredAt),
      timezone: Value(timezone),
      rawDirection: Value(rawDirection),
      nature: Value(nature),
      amountMinor: Value(amountMinor),
      currency: Value(currency),
      rawCounterparty: Value(rawCounterparty),
      description: Value(description),
      rawTransactionType: Value(rawTransactionType),
      status: status == null && nullToAbsent
          ? const Value.absent()
          : Value(status),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      classificationStatus: Value(classificationStatus),
      classificationSource: Value(classificationSource),
      classificationConfidence: classificationConfidence == null && nullToAbsent
          ? const Value.absent()
          : Value(classificationConfidence),
      classificationReason: classificationReason == null && nullToAbsent
          ? const Value.absent()
          : Value(classificationReason),
      rawDataJson: Value(rawDataJson),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      revision: Value(revision),
      isDeleted: Value(isDeleted),
    );
  }

  factory TransactionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransactionRow(
      id: serializer.fromJson<String>(json['id']),
      ledgerId: serializer.fromJson<String>(json['ledgerId']),
      accountId: serializer.fromJson<String>(json['accountId']),
      importBatchId: serializer.fromJson<String>(json['importBatchId']),
      sourceType: serializer.fromJson<String>(json['sourceType']),
      sourceTransactionId: serializer.fromJson<String?>(
        json['sourceTransactionId'],
      ),
      deduplicationKey: serializer.fromJson<String>(json['deduplicationKey']),
      occurredAt: serializer.fromJson<DateTime>(json['occurredAt']),
      timezone: serializer.fromJson<String>(json['timezone']),
      rawDirection: serializer.fromJson<String>(json['rawDirection']),
      nature: serializer.fromJson<String>(json['nature']),
      amountMinor: serializer.fromJson<int>(json['amountMinor']),
      currency: serializer.fromJson<String>(json['currency']),
      rawCounterparty: serializer.fromJson<String>(json['rawCounterparty']),
      description: serializer.fromJson<String>(json['description']),
      rawTransactionType: serializer.fromJson<String>(
        json['rawTransactionType'],
      ),
      status: serializer.fromJson<String?>(json['status']),
      categoryId: serializer.fromJson<String?>(json['categoryId']),
      projectId: serializer.fromJson<String?>(json['projectId']),
      classificationStatus: serializer.fromJson<String>(
        json['classificationStatus'],
      ),
      classificationSource: serializer.fromJson<String>(
        json['classificationSource'],
      ),
      classificationConfidence: serializer.fromJson<double?>(
        json['classificationConfidence'],
      ),
      classificationReason: serializer.fromJson<String?>(
        json['classificationReason'],
      ),
      rawDataJson: serializer.fromJson<String>(json['rawDataJson']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      revision: serializer.fromJson<int>(json['revision']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'ledgerId': serializer.toJson<String>(ledgerId),
      'accountId': serializer.toJson<String>(accountId),
      'importBatchId': serializer.toJson<String>(importBatchId),
      'sourceType': serializer.toJson<String>(sourceType),
      'sourceTransactionId': serializer.toJson<String?>(sourceTransactionId),
      'deduplicationKey': serializer.toJson<String>(deduplicationKey),
      'occurredAt': serializer.toJson<DateTime>(occurredAt),
      'timezone': serializer.toJson<String>(timezone),
      'rawDirection': serializer.toJson<String>(rawDirection),
      'nature': serializer.toJson<String>(nature),
      'amountMinor': serializer.toJson<int>(amountMinor),
      'currency': serializer.toJson<String>(currency),
      'rawCounterparty': serializer.toJson<String>(rawCounterparty),
      'description': serializer.toJson<String>(description),
      'rawTransactionType': serializer.toJson<String>(rawTransactionType),
      'status': serializer.toJson<String?>(status),
      'categoryId': serializer.toJson<String?>(categoryId),
      'projectId': serializer.toJson<String?>(projectId),
      'classificationStatus': serializer.toJson<String>(classificationStatus),
      'classificationSource': serializer.toJson<String>(classificationSource),
      'classificationConfidence': serializer.toJson<double?>(
        classificationConfidence,
      ),
      'classificationReason': serializer.toJson<String?>(classificationReason),
      'rawDataJson': serializer.toJson<String>(rawDataJson),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'revision': serializer.toJson<int>(revision),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  TransactionRow copyWith({
    String? id,
    String? ledgerId,
    String? accountId,
    String? importBatchId,
    String? sourceType,
    Value<String?> sourceTransactionId = const Value.absent(),
    String? deduplicationKey,
    DateTime? occurredAt,
    String? timezone,
    String? rawDirection,
    String? nature,
    int? amountMinor,
    String? currency,
    String? rawCounterparty,
    String? description,
    String? rawTransactionType,
    Value<String?> status = const Value.absent(),
    Value<String?> categoryId = const Value.absent(),
    Value<String?> projectId = const Value.absent(),
    String? classificationStatus,
    String? classificationSource,
    Value<double?> classificationConfidence = const Value.absent(),
    Value<String?> classificationReason = const Value.absent(),
    String? rawDataJson,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? revision,
    bool? isDeleted,
  }) => TransactionRow(
    id: id ?? this.id,
    ledgerId: ledgerId ?? this.ledgerId,
    accountId: accountId ?? this.accountId,
    importBatchId: importBatchId ?? this.importBatchId,
    sourceType: sourceType ?? this.sourceType,
    sourceTransactionId: sourceTransactionId.present
        ? sourceTransactionId.value
        : this.sourceTransactionId,
    deduplicationKey: deduplicationKey ?? this.deduplicationKey,
    occurredAt: occurredAt ?? this.occurredAt,
    timezone: timezone ?? this.timezone,
    rawDirection: rawDirection ?? this.rawDirection,
    nature: nature ?? this.nature,
    amountMinor: amountMinor ?? this.amountMinor,
    currency: currency ?? this.currency,
    rawCounterparty: rawCounterparty ?? this.rawCounterparty,
    description: description ?? this.description,
    rawTransactionType: rawTransactionType ?? this.rawTransactionType,
    status: status.present ? status.value : this.status,
    categoryId: categoryId.present ? categoryId.value : this.categoryId,
    projectId: projectId.present ? projectId.value : this.projectId,
    classificationStatus: classificationStatus ?? this.classificationStatus,
    classificationSource: classificationSource ?? this.classificationSource,
    classificationConfidence: classificationConfidence.present
        ? classificationConfidence.value
        : this.classificationConfidence,
    classificationReason: classificationReason.present
        ? classificationReason.value
        : this.classificationReason,
    rawDataJson: rawDataJson ?? this.rawDataJson,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    revision: revision ?? this.revision,
    isDeleted: isDeleted ?? this.isDeleted,
  );
  TransactionRow copyWithCompanion(TransactionRowsCompanion data) {
    return TransactionRow(
      id: data.id.present ? data.id.value : this.id,
      ledgerId: data.ledgerId.present ? data.ledgerId.value : this.ledgerId,
      accountId: data.accountId.present ? data.accountId.value : this.accountId,
      importBatchId: data.importBatchId.present
          ? data.importBatchId.value
          : this.importBatchId,
      sourceType: data.sourceType.present
          ? data.sourceType.value
          : this.sourceType,
      sourceTransactionId: data.sourceTransactionId.present
          ? data.sourceTransactionId.value
          : this.sourceTransactionId,
      deduplicationKey: data.deduplicationKey.present
          ? data.deduplicationKey.value
          : this.deduplicationKey,
      occurredAt: data.occurredAt.present
          ? data.occurredAt.value
          : this.occurredAt,
      timezone: data.timezone.present ? data.timezone.value : this.timezone,
      rawDirection: data.rawDirection.present
          ? data.rawDirection.value
          : this.rawDirection,
      nature: data.nature.present ? data.nature.value : this.nature,
      amountMinor: data.amountMinor.present
          ? data.amountMinor.value
          : this.amountMinor,
      currency: data.currency.present ? data.currency.value : this.currency,
      rawCounterparty: data.rawCounterparty.present
          ? data.rawCounterparty.value
          : this.rawCounterparty,
      description: data.description.present
          ? data.description.value
          : this.description,
      rawTransactionType: data.rawTransactionType.present
          ? data.rawTransactionType.value
          : this.rawTransactionType,
      status: data.status.present ? data.status.value : this.status,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      classificationStatus: data.classificationStatus.present
          ? data.classificationStatus.value
          : this.classificationStatus,
      classificationSource: data.classificationSource.present
          ? data.classificationSource.value
          : this.classificationSource,
      classificationConfidence: data.classificationConfidence.present
          ? data.classificationConfidence.value
          : this.classificationConfidence,
      classificationReason: data.classificationReason.present
          ? data.classificationReason.value
          : this.classificationReason,
      rawDataJson: data.rawDataJson.present
          ? data.rawDataJson.value
          : this.rawDataJson,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      revision: data.revision.present ? data.revision.value : this.revision,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransactionRow(')
          ..write('id: $id, ')
          ..write('ledgerId: $ledgerId, ')
          ..write('accountId: $accountId, ')
          ..write('importBatchId: $importBatchId, ')
          ..write('sourceType: $sourceType, ')
          ..write('sourceTransactionId: $sourceTransactionId, ')
          ..write('deduplicationKey: $deduplicationKey, ')
          ..write('occurredAt: $occurredAt, ')
          ..write('timezone: $timezone, ')
          ..write('rawDirection: $rawDirection, ')
          ..write('nature: $nature, ')
          ..write('amountMinor: $amountMinor, ')
          ..write('currency: $currency, ')
          ..write('rawCounterparty: $rawCounterparty, ')
          ..write('description: $description, ')
          ..write('rawTransactionType: $rawTransactionType, ')
          ..write('status: $status, ')
          ..write('categoryId: $categoryId, ')
          ..write('projectId: $projectId, ')
          ..write('classificationStatus: $classificationStatus, ')
          ..write('classificationSource: $classificationSource, ')
          ..write('classificationConfidence: $classificationConfidence, ')
          ..write('classificationReason: $classificationReason, ')
          ..write('rawDataJson: $rawDataJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('revision: $revision, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    ledgerId,
    accountId,
    importBatchId,
    sourceType,
    sourceTransactionId,
    deduplicationKey,
    occurredAt,
    timezone,
    rawDirection,
    nature,
    amountMinor,
    currency,
    rawCounterparty,
    description,
    rawTransactionType,
    status,
    categoryId,
    projectId,
    classificationStatus,
    classificationSource,
    classificationConfidence,
    classificationReason,
    rawDataJson,
    createdAt,
    updatedAt,
    revision,
    isDeleted,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TransactionRow &&
          other.id == this.id &&
          other.ledgerId == this.ledgerId &&
          other.accountId == this.accountId &&
          other.importBatchId == this.importBatchId &&
          other.sourceType == this.sourceType &&
          other.sourceTransactionId == this.sourceTransactionId &&
          other.deduplicationKey == this.deduplicationKey &&
          other.occurredAt == this.occurredAt &&
          other.timezone == this.timezone &&
          other.rawDirection == this.rawDirection &&
          other.nature == this.nature &&
          other.amountMinor == this.amountMinor &&
          other.currency == this.currency &&
          other.rawCounterparty == this.rawCounterparty &&
          other.description == this.description &&
          other.rawTransactionType == this.rawTransactionType &&
          other.status == this.status &&
          other.categoryId == this.categoryId &&
          other.projectId == this.projectId &&
          other.classificationStatus == this.classificationStatus &&
          other.classificationSource == this.classificationSource &&
          other.classificationConfidence == this.classificationConfidence &&
          other.classificationReason == this.classificationReason &&
          other.rawDataJson == this.rawDataJson &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.revision == this.revision &&
          other.isDeleted == this.isDeleted);
}

class TransactionRowsCompanion extends UpdateCompanion<TransactionRow> {
  final Value<String> id;
  final Value<String> ledgerId;
  final Value<String> accountId;
  final Value<String> importBatchId;
  final Value<String> sourceType;
  final Value<String?> sourceTransactionId;
  final Value<String> deduplicationKey;
  final Value<DateTime> occurredAt;
  final Value<String> timezone;
  final Value<String> rawDirection;
  final Value<String> nature;
  final Value<int> amountMinor;
  final Value<String> currency;
  final Value<String> rawCounterparty;
  final Value<String> description;
  final Value<String> rawTransactionType;
  final Value<String?> status;
  final Value<String?> categoryId;
  final Value<String?> projectId;
  final Value<String> classificationStatus;
  final Value<String> classificationSource;
  final Value<double?> classificationConfidence;
  final Value<String?> classificationReason;
  final Value<String> rawDataJson;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> revision;
  final Value<bool> isDeleted;
  final Value<int> rowid;
  const TransactionRowsCompanion({
    this.id = const Value.absent(),
    this.ledgerId = const Value.absent(),
    this.accountId = const Value.absent(),
    this.importBatchId = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.sourceTransactionId = const Value.absent(),
    this.deduplicationKey = const Value.absent(),
    this.occurredAt = const Value.absent(),
    this.timezone = const Value.absent(),
    this.rawDirection = const Value.absent(),
    this.nature = const Value.absent(),
    this.amountMinor = const Value.absent(),
    this.currency = const Value.absent(),
    this.rawCounterparty = const Value.absent(),
    this.description = const Value.absent(),
    this.rawTransactionType = const Value.absent(),
    this.status = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.projectId = const Value.absent(),
    this.classificationStatus = const Value.absent(),
    this.classificationSource = const Value.absent(),
    this.classificationConfidence = const Value.absent(),
    this.classificationReason = const Value.absent(),
    this.rawDataJson = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.revision = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TransactionRowsCompanion.insert({
    required String id,
    required String ledgerId,
    required String accountId,
    required String importBatchId,
    required String sourceType,
    this.sourceTransactionId = const Value.absent(),
    required String deduplicationKey,
    required DateTime occurredAt,
    required String timezone,
    required String rawDirection,
    required String nature,
    required int amountMinor,
    required String currency,
    required String rawCounterparty,
    required String description,
    required String rawTransactionType,
    this.status = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.projectId = const Value.absent(),
    required String classificationStatus,
    required String classificationSource,
    this.classificationConfidence = const Value.absent(),
    this.classificationReason = const Value.absent(),
    required String rawDataJson,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.revision = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       ledgerId = Value(ledgerId),
       accountId = Value(accountId),
       importBatchId = Value(importBatchId),
       sourceType = Value(sourceType),
       deduplicationKey = Value(deduplicationKey),
       occurredAt = Value(occurredAt),
       timezone = Value(timezone),
       rawDirection = Value(rawDirection),
       nature = Value(nature),
       amountMinor = Value(amountMinor),
       currency = Value(currency),
       rawCounterparty = Value(rawCounterparty),
       description = Value(description),
       rawTransactionType = Value(rawTransactionType),
       classificationStatus = Value(classificationStatus),
       classificationSource = Value(classificationSource),
       rawDataJson = Value(rawDataJson),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<TransactionRow> custom({
    Expression<String>? id,
    Expression<String>? ledgerId,
    Expression<String>? accountId,
    Expression<String>? importBatchId,
    Expression<String>? sourceType,
    Expression<String>? sourceTransactionId,
    Expression<String>? deduplicationKey,
    Expression<DateTime>? occurredAt,
    Expression<String>? timezone,
    Expression<String>? rawDirection,
    Expression<String>? nature,
    Expression<int>? amountMinor,
    Expression<String>? currency,
    Expression<String>? rawCounterparty,
    Expression<String>? description,
    Expression<String>? rawTransactionType,
    Expression<String>? status,
    Expression<String>? categoryId,
    Expression<String>? projectId,
    Expression<String>? classificationStatus,
    Expression<String>? classificationSource,
    Expression<double>? classificationConfidence,
    Expression<String>? classificationReason,
    Expression<String>? rawDataJson,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? revision,
    Expression<bool>? isDeleted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ledgerId != null) 'ledger_id': ledgerId,
      if (accountId != null) 'account_id': accountId,
      if (importBatchId != null) 'import_batch_id': importBatchId,
      if (sourceType != null) 'source_type': sourceType,
      if (sourceTransactionId != null)
        'source_transaction_id': sourceTransactionId,
      if (deduplicationKey != null) 'deduplication_key': deduplicationKey,
      if (occurredAt != null) 'occurred_at': occurredAt,
      if (timezone != null) 'timezone': timezone,
      if (rawDirection != null) 'raw_direction': rawDirection,
      if (nature != null) 'nature': nature,
      if (amountMinor != null) 'amount_minor': amountMinor,
      if (currency != null) 'currency': currency,
      if (rawCounterparty != null) 'raw_counterparty': rawCounterparty,
      if (description != null) 'description': description,
      if (rawTransactionType != null)
        'raw_transaction_type': rawTransactionType,
      if (status != null) 'status': status,
      if (categoryId != null) 'category_id': categoryId,
      if (projectId != null) 'project_id': projectId,
      if (classificationStatus != null)
        'classification_status': classificationStatus,
      if (classificationSource != null)
        'classification_source': classificationSource,
      if (classificationConfidence != null)
        'classification_confidence': classificationConfidence,
      if (classificationReason != null)
        'classification_reason': classificationReason,
      if (rawDataJson != null) 'raw_data_json': rawDataJson,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (revision != null) 'revision': revision,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TransactionRowsCompanion copyWith({
    Value<String>? id,
    Value<String>? ledgerId,
    Value<String>? accountId,
    Value<String>? importBatchId,
    Value<String>? sourceType,
    Value<String?>? sourceTransactionId,
    Value<String>? deduplicationKey,
    Value<DateTime>? occurredAt,
    Value<String>? timezone,
    Value<String>? rawDirection,
    Value<String>? nature,
    Value<int>? amountMinor,
    Value<String>? currency,
    Value<String>? rawCounterparty,
    Value<String>? description,
    Value<String>? rawTransactionType,
    Value<String?>? status,
    Value<String?>? categoryId,
    Value<String?>? projectId,
    Value<String>? classificationStatus,
    Value<String>? classificationSource,
    Value<double?>? classificationConfidence,
    Value<String?>? classificationReason,
    Value<String>? rawDataJson,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? revision,
    Value<bool>? isDeleted,
    Value<int>? rowid,
  }) {
    return TransactionRowsCompanion(
      id: id ?? this.id,
      ledgerId: ledgerId ?? this.ledgerId,
      accountId: accountId ?? this.accountId,
      importBatchId: importBatchId ?? this.importBatchId,
      sourceType: sourceType ?? this.sourceType,
      sourceTransactionId: sourceTransactionId ?? this.sourceTransactionId,
      deduplicationKey: deduplicationKey ?? this.deduplicationKey,
      occurredAt: occurredAt ?? this.occurredAt,
      timezone: timezone ?? this.timezone,
      rawDirection: rawDirection ?? this.rawDirection,
      nature: nature ?? this.nature,
      amountMinor: amountMinor ?? this.amountMinor,
      currency: currency ?? this.currency,
      rawCounterparty: rawCounterparty ?? this.rawCounterparty,
      description: description ?? this.description,
      rawTransactionType: rawTransactionType ?? this.rawTransactionType,
      status: status ?? this.status,
      categoryId: categoryId ?? this.categoryId,
      projectId: projectId ?? this.projectId,
      classificationStatus: classificationStatus ?? this.classificationStatus,
      classificationSource: classificationSource ?? this.classificationSource,
      classificationConfidence:
          classificationConfidence ?? this.classificationConfidence,
      classificationReason: classificationReason ?? this.classificationReason,
      rawDataJson: rawDataJson ?? this.rawDataJson,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      revision: revision ?? this.revision,
      isDeleted: isDeleted ?? this.isDeleted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (ledgerId.present) {
      map['ledger_id'] = Variable<String>(ledgerId.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<String>(accountId.value);
    }
    if (importBatchId.present) {
      map['import_batch_id'] = Variable<String>(importBatchId.value);
    }
    if (sourceType.present) {
      map['source_type'] = Variable<String>(sourceType.value);
    }
    if (sourceTransactionId.present) {
      map['source_transaction_id'] = Variable<String>(
        sourceTransactionId.value,
      );
    }
    if (deduplicationKey.present) {
      map['deduplication_key'] = Variable<String>(deduplicationKey.value);
    }
    if (occurredAt.present) {
      map['occurred_at'] = Variable<DateTime>(occurredAt.value);
    }
    if (timezone.present) {
      map['timezone'] = Variable<String>(timezone.value);
    }
    if (rawDirection.present) {
      map['raw_direction'] = Variable<String>(rawDirection.value);
    }
    if (nature.present) {
      map['nature'] = Variable<String>(nature.value);
    }
    if (amountMinor.present) {
      map['amount_minor'] = Variable<int>(amountMinor.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (rawCounterparty.present) {
      map['raw_counterparty'] = Variable<String>(rawCounterparty.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rawTransactionType.present) {
      map['raw_transaction_type'] = Variable<String>(rawTransactionType.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String>(projectId.value);
    }
    if (classificationStatus.present) {
      map['classification_status'] = Variable<String>(
        classificationStatus.value,
      );
    }
    if (classificationSource.present) {
      map['classification_source'] = Variable<String>(
        classificationSource.value,
      );
    }
    if (classificationConfidence.present) {
      map['classification_confidence'] = Variable<double>(
        classificationConfidence.value,
      );
    }
    if (classificationReason.present) {
      map['classification_reason'] = Variable<String>(
        classificationReason.value,
      );
    }
    if (rawDataJson.present) {
      map['raw_data_json'] = Variable<String>(rawDataJson.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (revision.present) {
      map['revision'] = Variable<int>(revision.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionRowsCompanion(')
          ..write('id: $id, ')
          ..write('ledgerId: $ledgerId, ')
          ..write('accountId: $accountId, ')
          ..write('importBatchId: $importBatchId, ')
          ..write('sourceType: $sourceType, ')
          ..write('sourceTransactionId: $sourceTransactionId, ')
          ..write('deduplicationKey: $deduplicationKey, ')
          ..write('occurredAt: $occurredAt, ')
          ..write('timezone: $timezone, ')
          ..write('rawDirection: $rawDirection, ')
          ..write('nature: $nature, ')
          ..write('amountMinor: $amountMinor, ')
          ..write('currency: $currency, ')
          ..write('rawCounterparty: $rawCounterparty, ')
          ..write('description: $description, ')
          ..write('rawTransactionType: $rawTransactionType, ')
          ..write('status: $status, ')
          ..write('categoryId: $categoryId, ')
          ..write('projectId: $projectId, ')
          ..write('classificationStatus: $classificationStatus, ')
          ..write('classificationSource: $classificationSource, ')
          ..write('classificationConfidence: $classificationConfidence, ')
          ..write('classificationReason: $classificationReason, ')
          ..write('rawDataJson: $rawDataJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('revision: $revision, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MoneySeenDatabase extends GeneratedDatabase {
  _$MoneySeenDatabase(QueryExecutor e) : super(e);
  $MoneySeenDatabaseManager get managers => $MoneySeenDatabaseManager(this);
  late final $LedgerRowsTable ledgerRows = $LedgerRowsTable(this);
  late final $AccountRowsTable accountRows = $AccountRowsTable(this);
  late final $ImportBatchRowsTable importBatchRows = $ImportBatchRowsTable(
    this,
  );
  late final $TransactionRowsTable transactionRows = $TransactionRowsTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    ledgerRows,
    accountRows,
    importBatchRows,
    transactionRows,
  ];
}

typedef $$LedgerRowsTableCreateCompanionBuilder = LedgerRowsCompanion Function({
  required String id,
  required String name,
  required String type,
  required String currency,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<int> revision,
  Value<bool> isDeleted,
  Value<int> rowid,
});
typedef $$LedgerRowsTableUpdateCompanionBuilder = LedgerRowsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> type,
  Value<String> currency,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> revision,
  Value<bool> isDeleted,
  Value<int> rowid,
});

final class $$LedgerRowsTableReferences
    extends BaseReferences<_$MoneySeenDatabase, $LedgerRowsTable, LedgerRow> {
  $$LedgerRowsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$AccountRowsTable, List<AccountRow>>
  _accountRowsRefsTable(_$MoneySeenDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.accountRows,
        aliasName: 'ledger_rows__id__account_rows__ledger_id',
      );

  $$AccountRowsTableProcessedTableManager get accountRowsRefs {
    final manager = $$AccountRowsTableTableManager(
      $_db,
      $_db.accountRows,
    ).filter((f) => f.ledgerId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_accountRowsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TransactionRowsTable, List<TransactionRow>>
  _transactionRowsRefsTable(_$MoneySeenDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.transactionRows,
        aliasName: 'ledger_rows__id__transaction_rows__ledger_id',
      );

  $$TransactionRowsTableProcessedTableManager get transactionRowsRefs {
    final manager = $$TransactionRowsTableTableManager(
      $_db,
      $_db.transactionRows,
    ).filter((f) => f.ledgerId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _transactionRowsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$LedgerRowsTableFilterComposer
    extends Composer<_$MoneySeenDatabase, $LedgerRowsTable> {
  $$LedgerRowsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get revision => $composableBuilder(
    column: $table.revision,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDeleted => $composableBuilder(
    column: $table.isDeleted,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> accountRowsRefs(
    Expression<bool> Function($$AccountRowsTableFilterComposer f) f,
  ) {
    final $$AccountRowsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.accountRows,
      getReferencedColumn: (t) => t.ledgerId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountRowsTableFilterComposer(
            $db: $db,
            $table: $db.accountRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> transactionRowsRefs(
    Expression<bool> Function($$TransactionRowsTableFilterComposer f) f,
  ) {
    final $$TransactionRowsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionRows,
      getReferencedColumn: (t) => t.ledgerId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionRowsTableFilterComposer(
            $db: $db,
            $table: $db.transactionRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LedgerRowsTableOrderingComposer
    extends Composer<_$MoneySeenDatabase, $LedgerRowsTable> {
  $$LedgerRowsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get revision => $composableBuilder(
    column: $table.revision,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
    column: $table.isDeleted,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LedgerRowsTableAnnotationComposer
    extends Composer<_$MoneySeenDatabase, $LedgerRowsTable> {
  $$LedgerRowsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<int> get revision =>
      $composableBuilder(column: $table.revision, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);

  Expression<T> accountRowsRefs<T extends Object>(
    Expression<T> Function($$AccountRowsTableAnnotationComposer a) f,
  ) {
    final $$AccountRowsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.accountRows,
      getReferencedColumn: (t) => t.ledgerId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountRowsTableAnnotationComposer(
            $db: $db,
            $table: $db.accountRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> transactionRowsRefs<T extends Object>(
    Expression<T> Function($$TransactionRowsTableAnnotationComposer a) f,
  ) {
    final $$TransactionRowsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionRows,
      getReferencedColumn: (t) => t.ledgerId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionRowsTableAnnotationComposer(
            $db: $db,
            $table: $db.transactionRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LedgerRowsTableTableManager
    extends
        RootTableManager<
          _$MoneySeenDatabase,
          $LedgerRowsTable,
          LedgerRow,
          $$LedgerRowsTableFilterComposer,
          $$LedgerRowsTableOrderingComposer,
          $$LedgerRowsTableAnnotationComposer,
          $$LedgerRowsTableCreateCompanionBuilder,
          $$LedgerRowsTableUpdateCompanionBuilder,
          (LedgerRow, $$LedgerRowsTableReferences),
          LedgerRow,
          PrefetchHooks Function({
            bool accountRowsRefs,
            bool transactionRowsRefs,
          })
        > {
  $$LedgerRowsTableTableManager(_$MoneySeenDatabase db, $LedgerRowsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LedgerRowsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LedgerRowsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LedgerRowsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> revision = const Value.absent(),
                Value<bool> isDeleted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LedgerRowsCompanion(
                id: id,
                name: name,
                type: type,
                currency: currency,
                createdAt: createdAt,
                updatedAt: updatedAt,
                revision: revision,
                isDeleted: isDeleted,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String type,
                required String currency,
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> revision = const Value.absent(),
                Value<bool> isDeleted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LedgerRowsCompanion.insert(
                id: id,
                name: name,
                type: type,
                currency: currency,
                createdAt: createdAt,
                updatedAt: updatedAt,
                revision: revision,
                isDeleted: isDeleted,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$LedgerRowsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({accountRowsRefs = false, transactionRowsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (accountRowsRefs) db.accountRows,
                    if (transactionRowsRefs) db.transactionRows,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (accountRowsRefs)
                        await $_getPrefetchedData<
                          LedgerRow,
                          $LedgerRowsTable,
                          AccountRow
                        >(
                          currentTable: table,
                          referencedTable: $$LedgerRowsTableReferences
                              ._accountRowsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$LedgerRowsTableReferences(
                                db,
                                table,
                                p0,
                              ).accountRowsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ledgerId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (transactionRowsRefs)
                        await $_getPrefetchedData<
                          LedgerRow,
                          $LedgerRowsTable,
                          TransactionRow
                        >(
                          currentTable: table,
                          referencedTable: $$LedgerRowsTableReferences
                              ._transactionRowsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$LedgerRowsTableReferences(
                                db,
                                table,
                                p0,
                              ).transactionRowsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ledgerId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$LedgerRowsTableProcessedTableManager =
    ProcessedTableManager<
      _$MoneySeenDatabase,
      $LedgerRowsTable,
      LedgerRow,
      $$LedgerRowsTableFilterComposer,
      $$LedgerRowsTableOrderingComposer,
      $$LedgerRowsTableAnnotationComposer,
      $$LedgerRowsTableCreateCompanionBuilder,
      $$LedgerRowsTableUpdateCompanionBuilder,
      (LedgerRow, $$LedgerRowsTableReferences),
      LedgerRow,
      PrefetchHooks Function({bool accountRowsRefs, bool transactionRowsRefs})
    >;
typedef $$AccountRowsTableCreateCompanionBuilder =
    AccountRowsCompanion Function({
      required String id,
      required String ledgerId,
      required String name,
      required String type,
      required String currency,
      Value<String?> institution,
      Value<String?> maskedIdentifier,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> revision,
      Value<bool> isDeleted,
      Value<int> rowid,
    });
typedef $$AccountRowsTableUpdateCompanionBuilder =
    AccountRowsCompanion Function({
      Value<String> id,
      Value<String> ledgerId,
      Value<String> name,
      Value<String> type,
      Value<String> currency,
      Value<String?> institution,
      Value<String?> maskedIdentifier,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> revision,
      Value<bool> isDeleted,
      Value<int> rowid,
    });

final class $$AccountRowsTableReferences
    extends BaseReferences<_$MoneySeenDatabase, $AccountRowsTable, AccountRow> {
  $$AccountRowsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $LedgerRowsTable _ledgerIdTable(_$MoneySeenDatabase db) =>
      db.ledgerRows.createAlias('account_rows__ledger_id__ledger_rows__id');

  $$LedgerRowsTableProcessedTableManager get ledgerId {
    final $_column = $_itemColumn<String>('ledger_id')!;

    final manager = $$LedgerRowsTableTableManager(
      $_db,
      $_db.ledgerRows,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ledgerIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ImportBatchRowsTable, List<ImportBatchRow>>
  _importBatchRowsRefsTable(_$MoneySeenDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.importBatchRows,
        aliasName: 'account_rows__id__import_batch_rows__account_id',
      );

  $$ImportBatchRowsTableProcessedTableManager get importBatchRowsRefs {
    final manager = $$ImportBatchRowsTableTableManager(
      $_db,
      $_db.importBatchRows,
    ).filter((f) => f.accountId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _importBatchRowsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TransactionRowsTable, List<TransactionRow>>
  _transactionRowsRefsTable(_$MoneySeenDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.transactionRows,
        aliasName: 'account_rows__id__transaction_rows__account_id',
      );

  $$TransactionRowsTableProcessedTableManager get transactionRowsRefs {
    final manager = $$TransactionRowsTableTableManager(
      $_db,
      $_db.transactionRows,
    ).filter((f) => f.accountId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _transactionRowsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AccountRowsTableFilterComposer
    extends Composer<_$MoneySeenDatabase, $AccountRowsTable> {
  $$AccountRowsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get institution => $composableBuilder(
    column: $table.institution,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get maskedIdentifier => $composableBuilder(
    column: $table.maskedIdentifier,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get revision => $composableBuilder(
    column: $table.revision,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDeleted => $composableBuilder(
    column: $table.isDeleted,
    builder: (column) => ColumnFilters(column),
  );

  $$LedgerRowsTableFilterComposer get ledgerId {
    final $$LedgerRowsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ledgerId,
      referencedTable: $db.ledgerRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LedgerRowsTableFilterComposer(
            $db: $db,
            $table: $db.ledgerRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> importBatchRowsRefs(
    Expression<bool> Function($$ImportBatchRowsTableFilterComposer f) f,
  ) {
    final $$ImportBatchRowsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.importBatchRows,
      getReferencedColumn: (t) => t.accountId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ImportBatchRowsTableFilterComposer(
            $db: $db,
            $table: $db.importBatchRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> transactionRowsRefs(
    Expression<bool> Function($$TransactionRowsTableFilterComposer f) f,
  ) {
    final $$TransactionRowsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionRows,
      getReferencedColumn: (t) => t.accountId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionRowsTableFilterComposer(
            $db: $db,
            $table: $db.transactionRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AccountRowsTableOrderingComposer
    extends Composer<_$MoneySeenDatabase, $AccountRowsTable> {
  $$AccountRowsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get institution => $composableBuilder(
    column: $table.institution,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get maskedIdentifier => $composableBuilder(
    column: $table.maskedIdentifier,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get revision => $composableBuilder(
    column: $table.revision,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
    column: $table.isDeleted,
    builder: (column) => ColumnOrderings(column),
  );

  $$LedgerRowsTableOrderingComposer get ledgerId {
    final $$LedgerRowsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ledgerId,
      referencedTable: $db.ledgerRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LedgerRowsTableOrderingComposer(
            $db: $db,
            $table: $db.ledgerRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AccountRowsTableAnnotationComposer
    extends Composer<_$MoneySeenDatabase, $AccountRowsTable> {
  $$AccountRowsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<String> get institution => $composableBuilder(
    column: $table.institution,
    builder: (column) => column,
  );

  GeneratedColumn<String> get maskedIdentifier => $composableBuilder(
    column: $table.maskedIdentifier,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<int> get revision =>
      $composableBuilder(column: $table.revision, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);

  $$LedgerRowsTableAnnotationComposer get ledgerId {
    final $$LedgerRowsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ledgerId,
      referencedTable: $db.ledgerRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LedgerRowsTableAnnotationComposer(
            $db: $db,
            $table: $db.ledgerRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> importBatchRowsRefs<T extends Object>(
    Expression<T> Function($$ImportBatchRowsTableAnnotationComposer a) f,
  ) {
    final $$ImportBatchRowsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.importBatchRows,
      getReferencedColumn: (t) => t.accountId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ImportBatchRowsTableAnnotationComposer(
            $db: $db,
            $table: $db.importBatchRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> transactionRowsRefs<T extends Object>(
    Expression<T> Function($$TransactionRowsTableAnnotationComposer a) f,
  ) {
    final $$TransactionRowsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionRows,
      getReferencedColumn: (t) => t.accountId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionRowsTableAnnotationComposer(
            $db: $db,
            $table: $db.transactionRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AccountRowsTableTableManager
    extends
        RootTableManager<
          _$MoneySeenDatabase,
          $AccountRowsTable,
          AccountRow,
          $$AccountRowsTableFilterComposer,
          $$AccountRowsTableOrderingComposer,
          $$AccountRowsTableAnnotationComposer,
          $$AccountRowsTableCreateCompanionBuilder,
          $$AccountRowsTableUpdateCompanionBuilder,
          (AccountRow, $$AccountRowsTableReferences),
          AccountRow,
          PrefetchHooks Function({
            bool ledgerId,
            bool importBatchRowsRefs,
            bool transactionRowsRefs,
          })
        > {
  $$AccountRowsTableTableManager(
    _$MoneySeenDatabase db,
    $AccountRowsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AccountRowsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AccountRowsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AccountRowsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> ledgerId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<String?> institution = const Value.absent(),
                Value<String?> maskedIdentifier = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> revision = const Value.absent(),
                Value<bool> isDeleted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AccountRowsCompanion(
                id: id,
                ledgerId: ledgerId,
                name: name,
                type: type,
                currency: currency,
                institution: institution,
                maskedIdentifier: maskedIdentifier,
                createdAt: createdAt,
                updatedAt: updatedAt,
                revision: revision,
                isDeleted: isDeleted,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String ledgerId,
                required String name,
                required String type,
                required String currency,
                Value<String?> institution = const Value.absent(),
                Value<String?> maskedIdentifier = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> revision = const Value.absent(),
                Value<bool> isDeleted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AccountRowsCompanion.insert(
                id: id,
                ledgerId: ledgerId,
                name: name,
                type: type,
                currency: currency,
                institution: institution,
                maskedIdentifier: maskedIdentifier,
                createdAt: createdAt,
                updatedAt: updatedAt,
                revision: revision,
                isDeleted: isDeleted,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$AccountRowsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                ledgerId = false,
                importBatchRowsRefs = false,
                transactionRowsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (importBatchRowsRefs) db.importBatchRows,
                    if (transactionRowsRefs) db.transactionRows,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (ledgerId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.ledgerId,
                            referencedTable: $$AccountRowsTableReferences
                                ._ledgerIdTable(db),
                            referencedColumn: $$AccountRowsTableReferences
                                ._ledgerIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (importBatchRowsRefs)
                        await $_getPrefetchedData<
                          AccountRow,
                          $AccountRowsTable,
                          ImportBatchRow
                        >(
                          currentTable: table,
                          referencedTable: $$AccountRowsTableReferences
                              ._importBatchRowsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AccountRowsTableReferences(
                                db,
                                table,
                                p0,
                              ).importBatchRowsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.accountId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (transactionRowsRefs)
                        await $_getPrefetchedData<
                          AccountRow,
                          $AccountRowsTable,
                          TransactionRow
                        >(
                          currentTable: table,
                          referencedTable: $$AccountRowsTableReferences
                              ._transactionRowsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AccountRowsTableReferences(
                                db,
                                table,
                                p0,
                              ).transactionRowsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.accountId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$AccountRowsTableProcessedTableManager =
    ProcessedTableManager<
      _$MoneySeenDatabase,
      $AccountRowsTable,
      AccountRow,
      $$AccountRowsTableFilterComposer,
      $$AccountRowsTableOrderingComposer,
      $$AccountRowsTableAnnotationComposer,
      $$AccountRowsTableCreateCompanionBuilder,
      $$AccountRowsTableUpdateCompanionBuilder,
      (AccountRow, $$AccountRowsTableReferences),
      AccountRow,
      PrefetchHooks Function({
        bool ledgerId,
        bool importBatchRowsRefs,
        bool transactionRowsRefs,
      })
    >;
typedef $$ImportBatchRowsTableCreateCompanionBuilder =
    ImportBatchRowsCompanion Function({
      required String id,
      required String accountId,
      required String sourceType,
      required String fileName,
      required String fileHash,
      Value<DateTime?> statementStartAt,
      Value<DateTime?> statementEndAt,
      required DateTime importedAt,
      required String parserVersion,
      Value<int> recordCount,
      Value<int> rowid,
    });
typedef $$ImportBatchRowsTableUpdateCompanionBuilder =
    ImportBatchRowsCompanion Function({
      Value<String> id,
      Value<String> accountId,
      Value<String> sourceType,
      Value<String> fileName,
      Value<String> fileHash,
      Value<DateTime?> statementStartAt,
      Value<DateTime?> statementEndAt,
      Value<DateTime> importedAt,
      Value<String> parserVersion,
      Value<int> recordCount,
      Value<int> rowid,
    });

final class $$ImportBatchRowsTableReferences
    extends
        BaseReferences<
          _$MoneySeenDatabase,
          $ImportBatchRowsTable,
          ImportBatchRow
        > {
  $$ImportBatchRowsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $AccountRowsTable _accountIdTable(_$MoneySeenDatabase db) => db
      .accountRows
      .createAlias('import_batch_rows__account_id__account_rows__id');

  $$AccountRowsTableProcessedTableManager get accountId {
    final $_column = $_itemColumn<String>('account_id')!;

    final manager = $$AccountRowsTableTableManager(
      $_db,
      $_db.accountRows,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_accountIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$TransactionRowsTable, List<TransactionRow>>
  _transactionRowsRefsTable(_$MoneySeenDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.transactionRows,
        aliasName: 'import_batch_rows__id__transaction_rows__import_batch_id',
      );

  $$TransactionRowsTableProcessedTableManager get transactionRowsRefs {
    final manager = $$TransactionRowsTableTableManager(
      $_db,
      $_db.transactionRows,
    ).filter((f) => f.importBatchId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _transactionRowsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ImportBatchRowsTableFilterComposer
    extends Composer<_$MoneySeenDatabase, $ImportBatchRowsTable> {
  $$ImportBatchRowsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fileName => $composableBuilder(
    column: $table.fileName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fileHash => $composableBuilder(
    column: $table.fileHash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get statementStartAt => $composableBuilder(
    column: $table.statementStartAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get statementEndAt => $composableBuilder(
    column: $table.statementEndAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get importedAt => $composableBuilder(
    column: $table.importedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get parserVersion => $composableBuilder(
    column: $table.parserVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get recordCount => $composableBuilder(
    column: $table.recordCount,
    builder: (column) => ColumnFilters(column),
  );

  $$AccountRowsTableFilterComposer get accountId {
    final $$AccountRowsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountRowsTableFilterComposer(
            $db: $db,
            $table: $db.accountRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> transactionRowsRefs(
    Expression<bool> Function($$TransactionRowsTableFilterComposer f) f,
  ) {
    final $$TransactionRowsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionRows,
      getReferencedColumn: (t) => t.importBatchId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionRowsTableFilterComposer(
            $db: $db,
            $table: $db.transactionRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ImportBatchRowsTableOrderingComposer
    extends Composer<_$MoneySeenDatabase, $ImportBatchRowsTable> {
  $$ImportBatchRowsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fileName => $composableBuilder(
    column: $table.fileName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fileHash => $composableBuilder(
    column: $table.fileHash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get statementStartAt => $composableBuilder(
    column: $table.statementStartAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get statementEndAt => $composableBuilder(
    column: $table.statementEndAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get importedAt => $composableBuilder(
    column: $table.importedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get parserVersion => $composableBuilder(
    column: $table.parserVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get recordCount => $composableBuilder(
    column: $table.recordCount,
    builder: (column) => ColumnOrderings(column),
  );

  $$AccountRowsTableOrderingComposer get accountId {
    final $$AccountRowsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountRowsTableOrderingComposer(
            $db: $db,
            $table: $db.accountRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ImportBatchRowsTableAnnotationComposer
    extends Composer<_$MoneySeenDatabase, $ImportBatchRowsTable> {
  $$ImportBatchRowsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get fileName =>
      $composableBuilder(column: $table.fileName, builder: (column) => column);

  GeneratedColumn<String> get fileHash =>
      $composableBuilder(column: $table.fileHash, builder: (column) => column);

  GeneratedColumn<DateTime> get statementStartAt => $composableBuilder(
    column: $table.statementStartAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get statementEndAt => $composableBuilder(
    column: $table.statementEndAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get importedAt => $composableBuilder(
    column: $table.importedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get parserVersion => $composableBuilder(
    column: $table.parserVersion,
    builder: (column) => column,
  );

  GeneratedColumn<int> get recordCount => $composableBuilder(
    column: $table.recordCount,
    builder: (column) => column,
  );

  $$AccountRowsTableAnnotationComposer get accountId {
    final $$AccountRowsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountRowsTableAnnotationComposer(
            $db: $db,
            $table: $db.accountRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> transactionRowsRefs<T extends Object>(
    Expression<T> Function($$TransactionRowsTableAnnotationComposer a) f,
  ) {
    final $$TransactionRowsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.transactionRows,
      getReferencedColumn: (t) => t.importBatchId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TransactionRowsTableAnnotationComposer(
            $db: $db,
            $table: $db.transactionRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ImportBatchRowsTableTableManager
    extends
        RootTableManager<
          _$MoneySeenDatabase,
          $ImportBatchRowsTable,
          ImportBatchRow,
          $$ImportBatchRowsTableFilterComposer,
          $$ImportBatchRowsTableOrderingComposer,
          $$ImportBatchRowsTableAnnotationComposer,
          $$ImportBatchRowsTableCreateCompanionBuilder,
          $$ImportBatchRowsTableUpdateCompanionBuilder,
          (ImportBatchRow, $$ImportBatchRowsTableReferences),
          ImportBatchRow,
          PrefetchHooks Function({bool accountId, bool transactionRowsRefs})
        > {
  $$ImportBatchRowsTableTableManager(
    _$MoneySeenDatabase db,
    $ImportBatchRowsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ImportBatchRowsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ImportBatchRowsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ImportBatchRowsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> accountId = const Value.absent(),
                Value<String> sourceType = const Value.absent(),
                Value<String> fileName = const Value.absent(),
                Value<String> fileHash = const Value.absent(),
                Value<DateTime?> statementStartAt = const Value.absent(),
                Value<DateTime?> statementEndAt = const Value.absent(),
                Value<DateTime> importedAt = const Value.absent(),
                Value<String> parserVersion = const Value.absent(),
                Value<int> recordCount = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ImportBatchRowsCompanion(
                id: id,
                accountId: accountId,
                sourceType: sourceType,
                fileName: fileName,
                fileHash: fileHash,
                statementStartAt: statementStartAt,
                statementEndAt: statementEndAt,
                importedAt: importedAt,
                parserVersion: parserVersion,
                recordCount: recordCount,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String accountId,
                required String sourceType,
                required String fileName,
                required String fileHash,
                Value<DateTime?> statementStartAt = const Value.absent(),
                Value<DateTime?> statementEndAt = const Value.absent(),
                required DateTime importedAt,
                required String parserVersion,
                Value<int> recordCount = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ImportBatchRowsCompanion.insert(
                id: id,
                accountId: accountId,
                sourceType: sourceType,
                fileName: fileName,
                fileHash: fileHash,
                statementStartAt: statementStartAt,
                statementEndAt: statementEndAt,
                importedAt: importedAt,
                parserVersion: parserVersion,
                recordCount: recordCount,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ImportBatchRowsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({accountId = false, transactionRowsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (transactionRowsRefs) db.transactionRows,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (accountId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.accountId,
                            referencedTable: $$ImportBatchRowsTableReferences
                                ._accountIdTable(db),
                            referencedColumn: $$ImportBatchRowsTableReferences
                                ._accountIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (transactionRowsRefs)
                        await $_getPrefetchedData<
                          ImportBatchRow,
                          $ImportBatchRowsTable,
                          TransactionRow
                        >(
                          currentTable: table,
                          referencedTable: $$ImportBatchRowsTableReferences
                              ._transactionRowsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ImportBatchRowsTableReferences(
                                db,
                                table,
                                p0,
                              ).transactionRowsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.importBatchId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ImportBatchRowsTableProcessedTableManager =
    ProcessedTableManager<
      _$MoneySeenDatabase,
      $ImportBatchRowsTable,
      ImportBatchRow,
      $$ImportBatchRowsTableFilterComposer,
      $$ImportBatchRowsTableOrderingComposer,
      $$ImportBatchRowsTableAnnotationComposer,
      $$ImportBatchRowsTableCreateCompanionBuilder,
      $$ImportBatchRowsTableUpdateCompanionBuilder,
      (ImportBatchRow, $$ImportBatchRowsTableReferences),
      ImportBatchRow,
      PrefetchHooks Function({bool accountId, bool transactionRowsRefs})
    >;
typedef $$TransactionRowsTableCreateCompanionBuilder =
    TransactionRowsCompanion Function({
      required String id,
      required String ledgerId,
      required String accountId,
      required String importBatchId,
      required String sourceType,
      Value<String?> sourceTransactionId,
      required String deduplicationKey,
      required DateTime occurredAt,
      required String timezone,
      required String rawDirection,
      required String nature,
      required int amountMinor,
      required String currency,
      required String rawCounterparty,
      required String description,
      required String rawTransactionType,
      Value<String?> status,
      Value<String?> categoryId,
      Value<String?> projectId,
      required String classificationStatus,
      required String classificationSource,
      Value<double?> classificationConfidence,
      Value<String?> classificationReason,
      required String rawDataJson,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> revision,
      Value<bool> isDeleted,
      Value<int> rowid,
    });
typedef $$TransactionRowsTableUpdateCompanionBuilder =
    TransactionRowsCompanion Function({
      Value<String> id,
      Value<String> ledgerId,
      Value<String> accountId,
      Value<String> importBatchId,
      Value<String> sourceType,
      Value<String?> sourceTransactionId,
      Value<String> deduplicationKey,
      Value<DateTime> occurredAt,
      Value<String> timezone,
      Value<String> rawDirection,
      Value<String> nature,
      Value<int> amountMinor,
      Value<String> currency,
      Value<String> rawCounterparty,
      Value<String> description,
      Value<String> rawTransactionType,
      Value<String?> status,
      Value<String?> categoryId,
      Value<String?> projectId,
      Value<String> classificationStatus,
      Value<String> classificationSource,
      Value<double?> classificationConfidence,
      Value<String?> classificationReason,
      Value<String> rawDataJson,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> revision,
      Value<bool> isDeleted,
      Value<int> rowid,
    });

final class $$TransactionRowsTableReferences
    extends
        BaseReferences<
          _$MoneySeenDatabase,
          $TransactionRowsTable,
          TransactionRow
        > {
  $$TransactionRowsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $LedgerRowsTable _ledgerIdTable(_$MoneySeenDatabase db) =>
      db.ledgerRows.createAlias('transaction_rows__ledger_id__ledger_rows__id');

  $$LedgerRowsTableProcessedTableManager get ledgerId {
    final $_column = $_itemColumn<String>('ledger_id')!;

    final manager = $$LedgerRowsTableTableManager(
      $_db,
      $_db.ledgerRows,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ledgerIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $AccountRowsTable _accountIdTable(_$MoneySeenDatabase db) => db
      .accountRows
      .createAlias('transaction_rows__account_id__account_rows__id');

  $$AccountRowsTableProcessedTableManager get accountId {
    final $_column = $_itemColumn<String>('account_id')!;

    final manager = $$AccountRowsTableTableManager(
      $_db,
      $_db.accountRows,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_accountIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ImportBatchRowsTable _importBatchIdTable(_$MoneySeenDatabase db) => db
      .importBatchRows
      .createAlias('transaction_rows__import_batch_id__import_batch_rows__id');

  $$ImportBatchRowsTableProcessedTableManager get importBatchId {
    final $_column = $_itemColumn<String>('import_batch_id')!;

    final manager = $$ImportBatchRowsTableTableManager(
      $_db,
      $_db.importBatchRows,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_importBatchIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TransactionRowsTableFilterComposer
    extends Composer<_$MoneySeenDatabase, $TransactionRowsTable> {
  $$TransactionRowsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceTransactionId => $composableBuilder(
    column: $table.sourceTransactionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deduplicationKey => $composableBuilder(
    column: $table.deduplicationKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get occurredAt => $composableBuilder(
    column: $table.occurredAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get timezone => $composableBuilder(
    column: $table.timezone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rawDirection => $composableBuilder(
    column: $table.rawDirection,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nature => $composableBuilder(
    column: $table.nature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amountMinor => $composableBuilder(
    column: $table.amountMinor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rawCounterparty => $composableBuilder(
    column: $table.rawCounterparty,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rawTransactionType => $composableBuilder(
    column: $table.rawTransactionType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get projectId => $composableBuilder(
    column: $table.projectId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get classificationStatus => $composableBuilder(
    column: $table.classificationStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get classificationSource => $composableBuilder(
    column: $table.classificationSource,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get classificationConfidence => $composableBuilder(
    column: $table.classificationConfidence,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get classificationReason => $composableBuilder(
    column: $table.classificationReason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rawDataJson => $composableBuilder(
    column: $table.rawDataJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get revision => $composableBuilder(
    column: $table.revision,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDeleted => $composableBuilder(
    column: $table.isDeleted,
    builder: (column) => ColumnFilters(column),
  );

  $$LedgerRowsTableFilterComposer get ledgerId {
    final $$LedgerRowsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ledgerId,
      referencedTable: $db.ledgerRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LedgerRowsTableFilterComposer(
            $db: $db,
            $table: $db.ledgerRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AccountRowsTableFilterComposer get accountId {
    final $$AccountRowsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountRowsTableFilterComposer(
            $db: $db,
            $table: $db.accountRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ImportBatchRowsTableFilterComposer get importBatchId {
    final $$ImportBatchRowsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.importBatchId,
      referencedTable: $db.importBatchRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ImportBatchRowsTableFilterComposer(
            $db: $db,
            $table: $db.importBatchRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionRowsTableOrderingComposer
    extends Composer<_$MoneySeenDatabase, $TransactionRowsTable> {
  $$TransactionRowsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceTransactionId => $composableBuilder(
    column: $table.sourceTransactionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deduplicationKey => $composableBuilder(
    column: $table.deduplicationKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get occurredAt => $composableBuilder(
    column: $table.occurredAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get timezone => $composableBuilder(
    column: $table.timezone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rawDirection => $composableBuilder(
    column: $table.rawDirection,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nature => $composableBuilder(
    column: $table.nature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amountMinor => $composableBuilder(
    column: $table.amountMinor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rawCounterparty => $composableBuilder(
    column: $table.rawCounterparty,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rawTransactionType => $composableBuilder(
    column: $table.rawTransactionType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get projectId => $composableBuilder(
    column: $table.projectId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get classificationStatus => $composableBuilder(
    column: $table.classificationStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get classificationSource => $composableBuilder(
    column: $table.classificationSource,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get classificationConfidence => $composableBuilder(
    column: $table.classificationConfidence,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get classificationReason => $composableBuilder(
    column: $table.classificationReason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rawDataJson => $composableBuilder(
    column: $table.rawDataJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get revision => $composableBuilder(
    column: $table.revision,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
    column: $table.isDeleted,
    builder: (column) => ColumnOrderings(column),
  );

  $$LedgerRowsTableOrderingComposer get ledgerId {
    final $$LedgerRowsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ledgerId,
      referencedTable: $db.ledgerRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LedgerRowsTableOrderingComposer(
            $db: $db,
            $table: $db.ledgerRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AccountRowsTableOrderingComposer get accountId {
    final $$AccountRowsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountRowsTableOrderingComposer(
            $db: $db,
            $table: $db.accountRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ImportBatchRowsTableOrderingComposer get importBatchId {
    final $$ImportBatchRowsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.importBatchId,
      referencedTable: $db.importBatchRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ImportBatchRowsTableOrderingComposer(
            $db: $db,
            $table: $db.importBatchRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionRowsTableAnnotationComposer
    extends Composer<_$MoneySeenDatabase, $TransactionRowsTable> {
  $$TransactionRowsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get sourceTransactionId => $composableBuilder(
    column: $table.sourceTransactionId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get deduplicationKey => $composableBuilder(
    column: $table.deduplicationKey,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get occurredAt => $composableBuilder(
    column: $table.occurredAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get timezone =>
      $composableBuilder(column: $table.timezone, builder: (column) => column);

  GeneratedColumn<String> get rawDirection => $composableBuilder(
    column: $table.rawDirection,
    builder: (column) => column,
  );

  GeneratedColumn<String> get nature =>
      $composableBuilder(column: $table.nature, builder: (column) => column);

  GeneratedColumn<int> get amountMinor => $composableBuilder(
    column: $table.amountMinor,
    builder: (column) => column,
  );

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<String> get rawCounterparty => $composableBuilder(
    column: $table.rawCounterparty,
    builder: (column) => column,
  );

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get rawTransactionType => $composableBuilder(
    column: $table.rawTransactionType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get projectId =>
      $composableBuilder(column: $table.projectId, builder: (column) => column);

  GeneratedColumn<String> get classificationStatus => $composableBuilder(
    column: $table.classificationStatus,
    builder: (column) => column,
  );

  GeneratedColumn<String> get classificationSource => $composableBuilder(
    column: $table.classificationSource,
    builder: (column) => column,
  );

  GeneratedColumn<double> get classificationConfidence => $composableBuilder(
    column: $table.classificationConfidence,
    builder: (column) => column,
  );

  GeneratedColumn<String> get classificationReason => $composableBuilder(
    column: $table.classificationReason,
    builder: (column) => column,
  );

  GeneratedColumn<String> get rawDataJson => $composableBuilder(
    column: $table.rawDataJson,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<int> get revision =>
      $composableBuilder(column: $table.revision, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);

  $$LedgerRowsTableAnnotationComposer get ledgerId {
    final $$LedgerRowsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ledgerId,
      referencedTable: $db.ledgerRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LedgerRowsTableAnnotationComposer(
            $db: $db,
            $table: $db.ledgerRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$AccountRowsTableAnnotationComposer get accountId {
    final $$AccountRowsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.accountId,
      referencedTable: $db.accountRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AccountRowsTableAnnotationComposer(
            $db: $db,
            $table: $db.accountRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ImportBatchRowsTableAnnotationComposer get importBatchId {
    final $$ImportBatchRowsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.importBatchId,
      referencedTable: $db.importBatchRows,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ImportBatchRowsTableAnnotationComposer(
            $db: $db,
            $table: $db.importBatchRows,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TransactionRowsTableTableManager
    extends
        RootTableManager<
          _$MoneySeenDatabase,
          $TransactionRowsTable,
          TransactionRow,
          $$TransactionRowsTableFilterComposer,
          $$TransactionRowsTableOrderingComposer,
          $$TransactionRowsTableAnnotationComposer,
          $$TransactionRowsTableCreateCompanionBuilder,
          $$TransactionRowsTableUpdateCompanionBuilder,
          (TransactionRow, $$TransactionRowsTableReferences),
          TransactionRow,
          PrefetchHooks Function({
            bool ledgerId,
            bool accountId,
            bool importBatchId,
          })
        > {
  $$TransactionRowsTableTableManager(
    _$MoneySeenDatabase db,
    $TransactionRowsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionRowsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionRowsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionRowsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> ledgerId = const Value.absent(),
                Value<String> accountId = const Value.absent(),
                Value<String> importBatchId = const Value.absent(),
                Value<String> sourceType = const Value.absent(),
                Value<String?> sourceTransactionId = const Value.absent(),
                Value<String> deduplicationKey = const Value.absent(),
                Value<DateTime> occurredAt = const Value.absent(),
                Value<String> timezone = const Value.absent(),
                Value<String> rawDirection = const Value.absent(),
                Value<String> nature = const Value.absent(),
                Value<int> amountMinor = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<String> rawCounterparty = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> rawTransactionType = const Value.absent(),
                Value<String?> status = const Value.absent(),
                Value<String?> categoryId = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                Value<String> classificationStatus = const Value.absent(),
                Value<String> classificationSource = const Value.absent(),
                Value<double?> classificationConfidence = const Value.absent(),
                Value<String?> classificationReason = const Value.absent(),
                Value<String> rawDataJson = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> revision = const Value.absent(),
                Value<bool> isDeleted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TransactionRowsCompanion(
                id: id,
                ledgerId: ledgerId,
                accountId: accountId,
                importBatchId: importBatchId,
                sourceType: sourceType,
                sourceTransactionId: sourceTransactionId,
                deduplicationKey: deduplicationKey,
                occurredAt: occurredAt,
                timezone: timezone,
                rawDirection: rawDirection,
                nature: nature,
                amountMinor: amountMinor,
                currency: currency,
                rawCounterparty: rawCounterparty,
                description: description,
                rawTransactionType: rawTransactionType,
                status: status,
                categoryId: categoryId,
                projectId: projectId,
                classificationStatus: classificationStatus,
                classificationSource: classificationSource,
                classificationConfidence: classificationConfidence,
                classificationReason: classificationReason,
                rawDataJson: rawDataJson,
                createdAt: createdAt,
                updatedAt: updatedAt,
                revision: revision,
                isDeleted: isDeleted,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String ledgerId,
                required String accountId,
                required String importBatchId,
                required String sourceType,
                Value<String?> sourceTransactionId = const Value.absent(),
                required String deduplicationKey,
                required DateTime occurredAt,
                required String timezone,
                required String rawDirection,
                required String nature,
                required int amountMinor,
                required String currency,
                required String rawCounterparty,
                required String description,
                required String rawTransactionType,
                Value<String?> status = const Value.absent(),
                Value<String?> categoryId = const Value.absent(),
                Value<String?> projectId = const Value.absent(),
                required String classificationStatus,
                required String classificationSource,
                Value<double?> classificationConfidence = const Value.absent(),
                Value<String?> classificationReason = const Value.absent(),
                required String rawDataJson,
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> revision = const Value.absent(),
                Value<bool> isDeleted = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TransactionRowsCompanion.insert(
                id: id,
                ledgerId: ledgerId,
                accountId: accountId,
                importBatchId: importBatchId,
                sourceType: sourceType,
                sourceTransactionId: sourceTransactionId,
                deduplicationKey: deduplicationKey,
                occurredAt: occurredAt,
                timezone: timezone,
                rawDirection: rawDirection,
                nature: nature,
                amountMinor: amountMinor,
                currency: currency,
                rawCounterparty: rawCounterparty,
                description: description,
                rawTransactionType: rawTransactionType,
                status: status,
                categoryId: categoryId,
                projectId: projectId,
                classificationStatus: classificationStatus,
                classificationSource: classificationSource,
                classificationConfidence: classificationConfidence,
                classificationReason: classificationReason,
                rawDataJson: rawDataJson,
                createdAt: createdAt,
                updatedAt: updatedAt,
                revision: revision,
                isDeleted: isDeleted,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TransactionRowsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({ledgerId = false, accountId = false, importBatchId = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (ledgerId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.ledgerId,
                            referencedTable: $$TransactionRowsTableReferences
                                ._ledgerIdTable(db),
                            referencedColumn: $$TransactionRowsTableReferences
                                ._ledgerIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (accountId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.accountId,
                            referencedTable: $$TransactionRowsTableReferences
                                ._accountIdTable(db),
                            referencedColumn: $$TransactionRowsTableReferences
                                ._accountIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (importBatchId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.importBatchId,
                            referencedTable: $$TransactionRowsTableReferences
                                ._importBatchIdTable(db),
                            referencedColumn: $$TransactionRowsTableReferences
                                ._importBatchIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [];
                  },
                );
              },
        ),
      );
}

typedef $$TransactionRowsTableProcessedTableManager =
    ProcessedTableManager<
      _$MoneySeenDatabase,
      $TransactionRowsTable,
      TransactionRow,
      $$TransactionRowsTableFilterComposer,
      $$TransactionRowsTableOrderingComposer,
      $$TransactionRowsTableAnnotationComposer,
      $$TransactionRowsTableCreateCompanionBuilder,
      $$TransactionRowsTableUpdateCompanionBuilder,
      (TransactionRow, $$TransactionRowsTableReferences),
      TransactionRow,
      PrefetchHooks Function({
        bool ledgerId,
        bool accountId,
        bool importBatchId,
      })
    >;

class $MoneySeenDatabaseManager {
  final _$MoneySeenDatabase _db;
  $MoneySeenDatabaseManager(this._db);
  $$LedgerRowsTableTableManager get ledgerRows =>
      $$LedgerRowsTableTableManager(_db, _db.ledgerRows);
  $$AccountRowsTableTableManager get accountRows =>
      $$AccountRowsTableTableManager(_db, _db.accountRows);
  $$ImportBatchRowsTableTableManager get importBatchRows =>
      $$ImportBatchRowsTableTableManager(_db, _db.importBatchRows);
  $$TransactionRowsTableTableManager get transactionRows =>
      $$TransactionRowsTableTableManager(_db, _db.transactionRows);
}
