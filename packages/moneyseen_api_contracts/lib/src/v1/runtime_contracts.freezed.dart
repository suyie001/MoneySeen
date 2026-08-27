// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'runtime_contracts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RuntimeConfig {

 int get apiVersion; int get classificationSchemaVersion; int get maxClassificationBatchSize; bool get classificationEnabled;
/// Create a copy of RuntimeConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RuntimeConfigCopyWith<RuntimeConfig> get copyWith => _$RuntimeConfigCopyWithImpl<RuntimeConfig>(this as RuntimeConfig, _$identity);

  /// Serializes this RuntimeConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RuntimeConfig&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.classificationSchemaVersion, classificationSchemaVersion) || other.classificationSchemaVersion == classificationSchemaVersion)&&(identical(other.maxClassificationBatchSize, maxClassificationBatchSize) || other.maxClassificationBatchSize == maxClassificationBatchSize)&&(identical(other.classificationEnabled, classificationEnabled) || other.classificationEnabled == classificationEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,apiVersion,classificationSchemaVersion,maxClassificationBatchSize,classificationEnabled);

@override
String toString() {
  return 'RuntimeConfig(apiVersion: $apiVersion, classificationSchemaVersion: $classificationSchemaVersion, maxClassificationBatchSize: $maxClassificationBatchSize, classificationEnabled: $classificationEnabled)';
}


}

/// @nodoc
abstract mixin class $RuntimeConfigCopyWith<$Res>  {
  factory $RuntimeConfigCopyWith(RuntimeConfig value, $Res Function(RuntimeConfig) _then) = _$RuntimeConfigCopyWithImpl;
@useResult
$Res call({
 int apiVersion, int classificationSchemaVersion, int maxClassificationBatchSize, bool classificationEnabled
});




}
/// @nodoc
class _$RuntimeConfigCopyWithImpl<$Res>
    implements $RuntimeConfigCopyWith<$Res> {
  _$RuntimeConfigCopyWithImpl(this._self, this._then);

  final RuntimeConfig _self;
  final $Res Function(RuntimeConfig) _then;

/// Create a copy of RuntimeConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? apiVersion = null,Object? classificationSchemaVersion = null,Object? maxClassificationBatchSize = null,Object? classificationEnabled = null,}) {
  return _then(RuntimeConfig(
apiVersion: null == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as int,classificationSchemaVersion: null == classificationSchemaVersion ? _self.classificationSchemaVersion : classificationSchemaVersion // ignore: cast_nullable_to_non_nullable
as int,maxClassificationBatchSize: null == maxClassificationBatchSize ? _self.maxClassificationBatchSize : maxClassificationBatchSize // ignore: cast_nullable_to_non_nullable
as int,classificationEnabled: null == classificationEnabled ? _self.classificationEnabled : classificationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RuntimeConfig].
extension RuntimeConfigPatterns on RuntimeConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RuntimeConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RuntimeConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RuntimeConfig value)  $default,){
final _that = this;
switch (_that) {
case _RuntimeConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RuntimeConfig value)?  $default,){
final _that = this;
switch (_that) {
case _RuntimeConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int apiVersion,  int classificationSchemaVersion,  int maxClassificationBatchSize,  bool classificationEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RuntimeConfig() when $default != null:
return $default(_that.apiVersion,_that.classificationSchemaVersion,_that.maxClassificationBatchSize,_that.classificationEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int apiVersion,  int classificationSchemaVersion,  int maxClassificationBatchSize,  bool classificationEnabled)  $default,) {final _that = this;
switch (_that) {
case _RuntimeConfig():
return $default(_that.apiVersion,_that.classificationSchemaVersion,_that.maxClassificationBatchSize,_that.classificationEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int apiVersion,  int classificationSchemaVersion,  int maxClassificationBatchSize,  bool classificationEnabled)?  $default,) {final _that = this;
switch (_that) {
case _RuntimeConfig() when $default != null:
return $default(_that.apiVersion,_that.classificationSchemaVersion,_that.maxClassificationBatchSize,_that.classificationEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RuntimeConfig implements RuntimeConfig {
  const _RuntimeConfig({required this.apiVersion, required this.classificationSchemaVersion, required this.maxClassificationBatchSize, required this.classificationEnabled});
  factory _RuntimeConfig.fromJson(Map<String, dynamic> json) => _$RuntimeConfigFromJson(json);

@override final  int apiVersion;
@override final  int classificationSchemaVersion;
@override final  int maxClassificationBatchSize;
@override final  bool classificationEnabled;

/// Create a copy of RuntimeConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RuntimeConfigCopyWith<_RuntimeConfig> get copyWith => __$RuntimeConfigCopyWithImpl<_RuntimeConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RuntimeConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RuntimeConfig&&(identical(other.apiVersion, apiVersion) || other.apiVersion == apiVersion)&&(identical(other.classificationSchemaVersion, classificationSchemaVersion) || other.classificationSchemaVersion == classificationSchemaVersion)&&(identical(other.maxClassificationBatchSize, maxClassificationBatchSize) || other.maxClassificationBatchSize == maxClassificationBatchSize)&&(identical(other.classificationEnabled, classificationEnabled) || other.classificationEnabled == classificationEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,apiVersion,classificationSchemaVersion,maxClassificationBatchSize,classificationEnabled);

@override
String toString() {
  return 'RuntimeConfig(apiVersion: $apiVersion, classificationSchemaVersion: $classificationSchemaVersion, maxClassificationBatchSize: $maxClassificationBatchSize, classificationEnabled: $classificationEnabled)';
}


}

/// @nodoc
abstract mixin class _$RuntimeConfigCopyWith<$Res> implements $RuntimeConfigCopyWith<$Res> {
  factory _$RuntimeConfigCopyWith(_RuntimeConfig value, $Res Function(_RuntimeConfig) _then) = __$RuntimeConfigCopyWithImpl;
@override @useResult
$Res call({
 int apiVersion, int classificationSchemaVersion, int maxClassificationBatchSize, bool classificationEnabled
});




}
/// @nodoc
class __$RuntimeConfigCopyWithImpl<$Res>
    implements _$RuntimeConfigCopyWith<$Res> {
  __$RuntimeConfigCopyWithImpl(this._self, this._then);

  final _RuntimeConfig _self;
  final $Res Function(_RuntimeConfig) _then;

/// Create a copy of RuntimeConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? apiVersion = null,Object? classificationSchemaVersion = null,Object? maxClassificationBatchSize = null,Object? classificationEnabled = null,}) {
  return _then(_RuntimeConfig(
apiVersion: null == apiVersion ? _self.apiVersion : apiVersion // ignore: cast_nullable_to_non_nullable
as int,classificationSchemaVersion: null == classificationSchemaVersion ? _self.classificationSchemaVersion : classificationSchemaVersion // ignore: cast_nullable_to_non_nullable
as int,maxClassificationBatchSize: null == maxClassificationBatchSize ? _self.maxClassificationBatchSize : maxClassificationBatchSize // ignore: cast_nullable_to_non_nullable
as int,classificationEnabled: null == classificationEnabled ? _self.classificationEnabled : classificationEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ApiError {

 String get code; String get message; String? get requestId;
/// Create a copy of ApiError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiErrorCopyWith<ApiError> get copyWith => _$ApiErrorCopyWithImpl<ApiError>(this as ApiError, _$identity);

  /// Serializes this ApiError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.requestId, requestId) || other.requestId == requestId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,requestId);

@override
String toString() {
  return 'ApiError(code: $code, message: $message, requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class $ApiErrorCopyWith<$Res>  {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) _then) = _$ApiErrorCopyWithImpl;
@useResult
$Res call({
 String code, String message, String? requestId
});




}
/// @nodoc
class _$ApiErrorCopyWithImpl<$Res>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._self, this._then);

  final ApiError _self;
  final $Res Function(ApiError) _then;

/// Create a copy of ApiError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,Object? requestId = freezed,}) {
  return _then(ApiError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiError].
extension ApiErrorPatterns on ApiError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiError value)  $default,){
final _that = this;
switch (_that) {
case _ApiError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiError value)?  $default,){
final _that = this;
switch (_that) {
case _ApiError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String message,  String? requestId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiError() when $default != null:
return $default(_that.code,_that.message,_that.requestId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String message,  String? requestId)  $default,) {final _that = this;
switch (_that) {
case _ApiError():
return $default(_that.code,_that.message,_that.requestId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String message,  String? requestId)?  $default,) {final _that = this;
switch (_that) {
case _ApiError() when $default != null:
return $default(_that.code,_that.message,_that.requestId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiError implements ApiError {
  const _ApiError({required this.code, required this.message, this.requestId});
  factory _ApiError.fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);

@override final  String code;
@override final  String message;
@override final  String? requestId;

/// Create a copy of ApiError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiErrorCopyWith<_ApiError> get copyWith => __$ApiErrorCopyWithImpl<_ApiError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.requestId, requestId) || other.requestId == requestId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,requestId);

@override
String toString() {
  return 'ApiError(code: $code, message: $message, requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class _$ApiErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory _$ApiErrorCopyWith(_ApiError value, $Res Function(_ApiError) _then) = __$ApiErrorCopyWithImpl;
@override @useResult
$Res call({
 String code, String message, String? requestId
});




}
/// @nodoc
class __$ApiErrorCopyWithImpl<$Res>
    implements _$ApiErrorCopyWith<$Res> {
  __$ApiErrorCopyWithImpl(this._self, this._then);

  final _ApiError _self;
  final $Res Function(_ApiError) _then;

/// Create a copy of ApiError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,Object? requestId = freezed,}) {
  return _then(_ApiError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
