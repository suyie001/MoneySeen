// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ledger {

 String get id; String get name; LedgerType get type; Currency get currency; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerCopyWith<Ledger> get copyWith => _$LedgerCopyWithImpl<Ledger>(this as Ledger, _$identity);

  /// Serializes this Ledger to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ledger&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,currency,createdAt,updatedAt);

@override
String toString() {
  return 'Ledger(id: $id, name: $name, type: $type, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $LedgerCopyWith<$Res>  {
  factory $LedgerCopyWith(Ledger value, $Res Function(Ledger) _then) = _$LedgerCopyWithImpl;
@useResult
$Res call({
 String id, String name, LedgerType type, Currency currency, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$LedgerCopyWithImpl<$Res>
    implements $LedgerCopyWith<$Res> {
  _$LedgerCopyWithImpl(this._self, this._then);

  final Ledger _self;
  final $Res Function(Ledger) _then;

/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? currency = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(Ledger(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LedgerType,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Ledger].
extension LedgerPatterns on Ledger {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ledger value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ledger() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ledger value)  $default,){
final _that = this;
switch (_that) {
case _Ledger():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ledger value)?  $default,){
final _that = this;
switch (_that) {
case _Ledger() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  LedgerType type,  Currency currency,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ledger() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.currency,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  LedgerType type,  Currency currency,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Ledger():
return $default(_that.id,_that.name,_that.type,_that.currency,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  LedgerType type,  Currency currency,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Ledger() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.currency,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ledger implements Ledger {
  const _Ledger({required this.id, required this.name, required this.type, required this.currency, required this.createdAt, required this.updatedAt});
  factory _Ledger.fromJson(Map<String, dynamic> json) => _$LedgerFromJson(json);

@override final  String id;
@override final  String name;
@override final  LedgerType type;
@override final  Currency currency;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedgerCopyWith<_Ledger> get copyWith => __$LedgerCopyWithImpl<_Ledger>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedgerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ledger&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,currency,createdAt,updatedAt);

@override
String toString() {
  return 'Ledger(id: $id, name: $name, type: $type, currency: $currency, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$LedgerCopyWith<$Res> implements $LedgerCopyWith<$Res> {
  factory _$LedgerCopyWith(_Ledger value, $Res Function(_Ledger) _then) = __$LedgerCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, LedgerType type, Currency currency, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$LedgerCopyWithImpl<$Res>
    implements _$LedgerCopyWith<$Res> {
  __$LedgerCopyWithImpl(this._self, this._then);

  final _Ledger _self;
  final $Res Function(_Ledger) _then;

/// Create a copy of Ledger
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? currency = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Ledger(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as LedgerType,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
