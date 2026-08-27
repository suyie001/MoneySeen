// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Transaction {

 String get id; String get ledgerId; String get accountId; DateTime get occurredAt; RawDirection get rawDirection; TransactionNature get nature; Money get amount; String get rawCounterparty; String get description; ClassificationStatus get classificationStatus; ClassificationSource get classificationSource; String? get categoryId; String? get projectId; List<String> get tagIds;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.ledgerId, ledgerId) || other.ledgerId == ledgerId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.rawDirection, rawDirection) || other.rawDirection == rawDirection)&&(identical(other.nature, nature) || other.nature == nature)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.rawCounterparty, rawCounterparty) || other.rawCounterparty == rawCounterparty)&&(identical(other.description, description) || other.description == description)&&(identical(other.classificationStatus, classificationStatus) || other.classificationStatus == classificationStatus)&&(identical(other.classificationSource, classificationSource) || other.classificationSource == classificationSource)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&const DeepCollectionEquality().equals(other.tagIds, tagIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ledgerId,accountId,occurredAt,rawDirection,nature,amount,rawCounterparty,description,classificationStatus,classificationSource,categoryId,projectId,const DeepCollectionEquality().hash(tagIds));

@override
String toString() {
  return 'Transaction(id: $id, ledgerId: $ledgerId, accountId: $accountId, occurredAt: $occurredAt, rawDirection: $rawDirection, nature: $nature, amount: $amount, rawCounterparty: $rawCounterparty, description: $description, classificationStatus: $classificationStatus, classificationSource: $classificationSource, categoryId: $categoryId, projectId: $projectId, tagIds: $tagIds)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
 String id, String ledgerId, String accountId, DateTime occurredAt, RawDirection rawDirection, TransactionNature nature, Money amount, String rawCounterparty, String description, ClassificationStatus classificationStatus, ClassificationSource classificationSource, String? categoryId, String? projectId, List<String> tagIds
});


$MoneyCopyWith<$Res> get amount;

}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ledgerId = null,Object? accountId = null,Object? occurredAt = null,Object? rawDirection = null,Object? nature = null,Object? amount = null,Object? rawCounterparty = null,Object? description = null,Object? classificationStatus = null,Object? classificationSource = null,Object? categoryId = freezed,Object? projectId = freezed,Object? tagIds = null,}) {
  return _then(Transaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ledgerId: null == ledgerId ? _self.ledgerId : ledgerId // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,rawDirection: null == rawDirection ? _self.rawDirection : rawDirection // ignore: cast_nullable_to_non_nullable
as RawDirection,nature: null == nature ? _self.nature : nature // ignore: cast_nullable_to_non_nullable
as TransactionNature,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,rawCounterparty: null == rawCounterparty ? _self.rawCounterparty : rawCounterparty // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,classificationStatus: null == classificationStatus ? _self.classificationStatus : classificationStatus // ignore: cast_nullable_to_non_nullable
as ClassificationStatus,classificationSource: null == classificationSource ? _self.classificationSource : classificationSource // ignore: cast_nullable_to_non_nullable
as ClassificationSource,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String?,tagIds: null == tagIds ? _self.tagIds : tagIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String ledgerId,  String accountId,  DateTime occurredAt,  RawDirection rawDirection,  TransactionNature nature,  Money amount,  String rawCounterparty,  String description,  ClassificationStatus classificationStatus,  ClassificationSource classificationSource,  String? categoryId,  String? projectId,  List<String> tagIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.ledgerId,_that.accountId,_that.occurredAt,_that.rawDirection,_that.nature,_that.amount,_that.rawCounterparty,_that.description,_that.classificationStatus,_that.classificationSource,_that.categoryId,_that.projectId,_that.tagIds);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String ledgerId,  String accountId,  DateTime occurredAt,  RawDirection rawDirection,  TransactionNature nature,  Money amount,  String rawCounterparty,  String description,  ClassificationStatus classificationStatus,  ClassificationSource classificationSource,  String? categoryId,  String? projectId,  List<String> tagIds)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.id,_that.ledgerId,_that.accountId,_that.occurredAt,_that.rawDirection,_that.nature,_that.amount,_that.rawCounterparty,_that.description,_that.classificationStatus,_that.classificationSource,_that.categoryId,_that.projectId,_that.tagIds);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String ledgerId,  String accountId,  DateTime occurredAt,  RawDirection rawDirection,  TransactionNature nature,  Money amount,  String rawCounterparty,  String description,  ClassificationStatus classificationStatus,  ClassificationSource classificationSource,  String? categoryId,  String? projectId,  List<String> tagIds)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.ledgerId,_that.accountId,_that.occurredAt,_that.rawDirection,_that.nature,_that.amount,_that.rawCounterparty,_that.description,_that.classificationStatus,_that.classificationSource,_that.categoryId,_that.projectId,_that.tagIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Transaction implements Transaction {
  const _Transaction({required this.id, required this.ledgerId, required this.accountId, required this.occurredAt, required this.rawDirection, required this.nature, required this.amount, required this.rawCounterparty, required this.description, required this.classificationStatus, required this.classificationSource, this.categoryId, this.projectId,  List<String> tagIds = const <String>[]}): _tagIds = tagIds;
  factory _Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

@override final  String id;
@override final  String ledgerId;
@override final  String accountId;
@override final  DateTime occurredAt;
@override final  RawDirection rawDirection;
@override final  TransactionNature nature;
@override final  Money amount;
@override final  String rawCounterparty;
@override final  String description;
@override final  ClassificationStatus classificationStatus;
@override final  ClassificationSource classificationSource;
@override final  String? categoryId;
@override final  String? projectId;
 final  List<String> _tagIds;
@override@JsonKey() List<String> get tagIds {
  if (_tagIds is EqualUnmodifiableListView) return _tagIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tagIds);
}


/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.ledgerId, ledgerId) || other.ledgerId == ledgerId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.rawDirection, rawDirection) || other.rawDirection == rawDirection)&&(identical(other.nature, nature) || other.nature == nature)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.rawCounterparty, rawCounterparty) || other.rawCounterparty == rawCounterparty)&&(identical(other.description, description) || other.description == description)&&(identical(other.classificationStatus, classificationStatus) || other.classificationStatus == classificationStatus)&&(identical(other.classificationSource, classificationSource) || other.classificationSource == classificationSource)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&const DeepCollectionEquality().equals(other._tagIds, _tagIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ledgerId,accountId,occurredAt,rawDirection,nature,amount,rawCounterparty,description,classificationStatus,classificationSource,categoryId,projectId,const DeepCollectionEquality().hash(_tagIds));

@override
String toString() {
  return 'Transaction(id: $id, ledgerId: $ledgerId, accountId: $accountId, occurredAt: $occurredAt, rawDirection: $rawDirection, nature: $nature, amount: $amount, rawCounterparty: $rawCounterparty, description: $description, classificationStatus: $classificationStatus, classificationSource: $classificationSource, categoryId: $categoryId, projectId: $projectId, tagIds: $tagIds)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 String id, String ledgerId, String accountId, DateTime occurredAt, RawDirection rawDirection, TransactionNature nature, Money amount, String rawCounterparty, String description, ClassificationStatus classificationStatus, ClassificationSource classificationSource, String? categoryId, String? projectId, List<String> tagIds
});


@override $MoneyCopyWith<$Res> get amount;

}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ledgerId = null,Object? accountId = null,Object? occurredAt = null,Object? rawDirection = null,Object? nature = null,Object? amount = null,Object? rawCounterparty = null,Object? description = null,Object? classificationStatus = null,Object? classificationSource = null,Object? categoryId = freezed,Object? projectId = freezed,Object? tagIds = null,}) {
  return _then(_Transaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ledgerId: null == ledgerId ? _self.ledgerId : ledgerId // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,rawDirection: null == rawDirection ? _self.rawDirection : rawDirection // ignore: cast_nullable_to_non_nullable
as RawDirection,nature: null == nature ? _self.nature : nature // ignore: cast_nullable_to_non_nullable
as TransactionNature,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,rawCounterparty: null == rawCounterparty ? _self.rawCounterparty : rawCounterparty // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,classificationStatus: null == classificationStatus ? _self.classificationStatus : classificationStatus // ignore: cast_nullable_to_non_nullable
as ClassificationStatus,classificationSource: null == classificationSource ? _self.classificationSource : classificationSource // ignore: cast_nullable_to_non_nullable
as ClassificationSource,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String?,tagIds: null == tagIds ? _self._tagIds : tagIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amount {
  
  return $MoneyCopyWith<$Res>(_self.amount, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}

// dart format on
