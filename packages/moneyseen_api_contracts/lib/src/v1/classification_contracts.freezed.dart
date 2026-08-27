// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classification_contracts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassificationBatchRequest {

 int get schemaVersion; String get locale; String get currency; ClassificationTaxonomy get taxonomy; List<TransactionSummary> get transactions;
/// Create a copy of ClassificationBatchRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassificationBatchRequestCopyWith<ClassificationBatchRequest> get copyWith => _$ClassificationBatchRequestCopyWithImpl<ClassificationBatchRequest>(this as ClassificationBatchRequest, _$identity);

  /// Serializes this ClassificationBatchRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassificationBatchRequest&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.taxonomy, taxonomy) || other.taxonomy == taxonomy)&&const DeepCollectionEquality().equals(other.transactions, transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,locale,currency,taxonomy,const DeepCollectionEquality().hash(transactions));

@override
String toString() {
  return 'ClassificationBatchRequest(schemaVersion: $schemaVersion, locale: $locale, currency: $currency, taxonomy: $taxonomy, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $ClassificationBatchRequestCopyWith<$Res>  {
  factory $ClassificationBatchRequestCopyWith(ClassificationBatchRequest value, $Res Function(ClassificationBatchRequest) _then) = _$ClassificationBatchRequestCopyWithImpl;
@useResult
$Res call({
 int schemaVersion, String locale, String currency, ClassificationTaxonomy taxonomy, List<TransactionSummary> transactions
});


$ClassificationTaxonomyCopyWith<$Res> get taxonomy;

}
/// @nodoc
class _$ClassificationBatchRequestCopyWithImpl<$Res>
    implements $ClassificationBatchRequestCopyWith<$Res> {
  _$ClassificationBatchRequestCopyWithImpl(this._self, this._then);

  final ClassificationBatchRequest _self;
  final $Res Function(ClassificationBatchRequest) _then;

/// Create a copy of ClassificationBatchRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schemaVersion = null,Object? locale = null,Object? currency = null,Object? taxonomy = null,Object? transactions = null,}) {
  return _then(ClassificationBatchRequest(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,taxonomy: null == taxonomy ? _self.taxonomy : taxonomy // ignore: cast_nullable_to_non_nullable
as ClassificationTaxonomy,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionSummary>,
  ));
}
/// Create a copy of ClassificationBatchRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassificationTaxonomyCopyWith<$Res> get taxonomy {
  
  return $ClassificationTaxonomyCopyWith<$Res>(_self.taxonomy, (value) {
    return _then(_self.copyWith(taxonomy: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClassificationBatchRequest].
extension ClassificationBatchRequestPatterns on ClassificationBatchRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassificationBatchRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassificationBatchRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassificationBatchRequest value)  $default,){
final _that = this;
switch (_that) {
case _ClassificationBatchRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassificationBatchRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ClassificationBatchRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int schemaVersion,  String locale,  String currency,  ClassificationTaxonomy taxonomy,  List<TransactionSummary> transactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassificationBatchRequest() when $default != null:
return $default(_that.schemaVersion,_that.locale,_that.currency,_that.taxonomy,_that.transactions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int schemaVersion,  String locale,  String currency,  ClassificationTaxonomy taxonomy,  List<TransactionSummary> transactions)  $default,) {final _that = this;
switch (_that) {
case _ClassificationBatchRequest():
return $default(_that.schemaVersion,_that.locale,_that.currency,_that.taxonomy,_that.transactions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int schemaVersion,  String locale,  String currency,  ClassificationTaxonomy taxonomy,  List<TransactionSummary> transactions)?  $default,) {final _that = this;
switch (_that) {
case _ClassificationBatchRequest() when $default != null:
return $default(_that.schemaVersion,_that.locale,_that.currency,_that.taxonomy,_that.transactions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassificationBatchRequest implements ClassificationBatchRequest {
  const _ClassificationBatchRequest({this.schemaVersion = 1, required this.locale, required this.currency, required this.taxonomy, required  List<TransactionSummary> transactions}): _transactions = transactions;
  factory _ClassificationBatchRequest.fromJson(Map<String, dynamic> json) => _$ClassificationBatchRequestFromJson(json);

@override@JsonKey() final  int schemaVersion;
@override final  String locale;
@override final  String currency;
@override final  ClassificationTaxonomy taxonomy;
 final  List<TransactionSummary> _transactions;
@override List<TransactionSummary> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of ClassificationBatchRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassificationBatchRequestCopyWith<_ClassificationBatchRequest> get copyWith => __$ClassificationBatchRequestCopyWithImpl<_ClassificationBatchRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassificationBatchRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassificationBatchRequest&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.taxonomy, taxonomy) || other.taxonomy == taxonomy)&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,locale,currency,taxonomy,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'ClassificationBatchRequest(schemaVersion: $schemaVersion, locale: $locale, currency: $currency, taxonomy: $taxonomy, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$ClassificationBatchRequestCopyWith<$Res> implements $ClassificationBatchRequestCopyWith<$Res> {
  factory _$ClassificationBatchRequestCopyWith(_ClassificationBatchRequest value, $Res Function(_ClassificationBatchRequest) _then) = __$ClassificationBatchRequestCopyWithImpl;
@override @useResult
$Res call({
 int schemaVersion, String locale, String currency, ClassificationTaxonomy taxonomy, List<TransactionSummary> transactions
});


@override $ClassificationTaxonomyCopyWith<$Res> get taxonomy;

}
/// @nodoc
class __$ClassificationBatchRequestCopyWithImpl<$Res>
    implements _$ClassificationBatchRequestCopyWith<$Res> {
  __$ClassificationBatchRequestCopyWithImpl(this._self, this._then);

  final _ClassificationBatchRequest _self;
  final $Res Function(_ClassificationBatchRequest) _then;

/// Create a copy of ClassificationBatchRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schemaVersion = null,Object? locale = null,Object? currency = null,Object? taxonomy = null,Object? transactions = null,}) {
  return _then(_ClassificationBatchRequest(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,taxonomy: null == taxonomy ? _self.taxonomy : taxonomy // ignore: cast_nullable_to_non_nullable
as ClassificationTaxonomy,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionSummary>,
  ));
}

/// Create a copy of ClassificationBatchRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassificationTaxonomyCopyWith<$Res> get taxonomy {
  
  return $ClassificationTaxonomyCopyWith<$Res>(_self.taxonomy, (value) {
    return _then(_self.copyWith(taxonomy: value));
  });
}
}


/// @nodoc
mixin _$ClassificationTaxonomy {

 List<TaxonomyOption> get categories; List<TaxonomyOption> get projects; List<TaxonomyOption> get tags;
/// Create a copy of ClassificationTaxonomy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassificationTaxonomyCopyWith<ClassificationTaxonomy> get copyWith => _$ClassificationTaxonomyCopyWithImpl<ClassificationTaxonomy>(this as ClassificationTaxonomy, _$identity);

  /// Serializes this ClassificationTaxonomy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassificationTaxonomy&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.projects, projects)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(projects),const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'ClassificationTaxonomy(categories: $categories, projects: $projects, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $ClassificationTaxonomyCopyWith<$Res>  {
  factory $ClassificationTaxonomyCopyWith(ClassificationTaxonomy value, $Res Function(ClassificationTaxonomy) _then) = _$ClassificationTaxonomyCopyWithImpl;
@useResult
$Res call({
 List<TaxonomyOption> categories, List<TaxonomyOption> projects, List<TaxonomyOption> tags
});




}
/// @nodoc
class _$ClassificationTaxonomyCopyWithImpl<$Res>
    implements $ClassificationTaxonomyCopyWith<$Res> {
  _$ClassificationTaxonomyCopyWithImpl(this._self, this._then);

  final ClassificationTaxonomy _self;
  final $Res Function(ClassificationTaxonomy) _then;

/// Create a copy of ClassificationTaxonomy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? projects = null,Object? tags = null,}) {
  return _then(ClassificationTaxonomy(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<TaxonomyOption>,projects: null == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<TaxonomyOption>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<TaxonomyOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassificationTaxonomy].
extension ClassificationTaxonomyPatterns on ClassificationTaxonomy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassificationTaxonomy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassificationTaxonomy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassificationTaxonomy value)  $default,){
final _that = this;
switch (_that) {
case _ClassificationTaxonomy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassificationTaxonomy value)?  $default,){
final _that = this;
switch (_that) {
case _ClassificationTaxonomy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TaxonomyOption> categories,  List<TaxonomyOption> projects,  List<TaxonomyOption> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassificationTaxonomy() when $default != null:
return $default(_that.categories,_that.projects,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TaxonomyOption> categories,  List<TaxonomyOption> projects,  List<TaxonomyOption> tags)  $default,) {final _that = this;
switch (_that) {
case _ClassificationTaxonomy():
return $default(_that.categories,_that.projects,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TaxonomyOption> categories,  List<TaxonomyOption> projects,  List<TaxonomyOption> tags)?  $default,) {final _that = this;
switch (_that) {
case _ClassificationTaxonomy() when $default != null:
return $default(_that.categories,_that.projects,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassificationTaxonomy implements ClassificationTaxonomy {
  const _ClassificationTaxonomy({ List<TaxonomyOption> categories = const <TaxonomyOption>[],  List<TaxonomyOption> projects = const <TaxonomyOption>[],  List<TaxonomyOption> tags = const <TaxonomyOption>[]}): _categories = categories,_projects = projects,_tags = tags;
  factory _ClassificationTaxonomy.fromJson(Map<String, dynamic> json) => _$ClassificationTaxonomyFromJson(json);

 final  List<TaxonomyOption> _categories;
@override@JsonKey() List<TaxonomyOption> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<TaxonomyOption> _projects;
@override@JsonKey() List<TaxonomyOption> get projects {
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projects);
}

 final  List<TaxonomyOption> _tags;
@override@JsonKey() List<TaxonomyOption> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of ClassificationTaxonomy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassificationTaxonomyCopyWith<_ClassificationTaxonomy> get copyWith => __$ClassificationTaxonomyCopyWithImpl<_ClassificationTaxonomy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassificationTaxonomyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassificationTaxonomy&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._projects, _projects)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_projects),const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'ClassificationTaxonomy(categories: $categories, projects: $projects, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$ClassificationTaxonomyCopyWith<$Res> implements $ClassificationTaxonomyCopyWith<$Res> {
  factory _$ClassificationTaxonomyCopyWith(_ClassificationTaxonomy value, $Res Function(_ClassificationTaxonomy) _then) = __$ClassificationTaxonomyCopyWithImpl;
@override @useResult
$Res call({
 List<TaxonomyOption> categories, List<TaxonomyOption> projects, List<TaxonomyOption> tags
});




}
/// @nodoc
class __$ClassificationTaxonomyCopyWithImpl<$Res>
    implements _$ClassificationTaxonomyCopyWith<$Res> {
  __$ClassificationTaxonomyCopyWithImpl(this._self, this._then);

  final _ClassificationTaxonomy _self;
  final $Res Function(_ClassificationTaxonomy) _then;

/// Create a copy of ClassificationTaxonomy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? projects = null,Object? tags = null,}) {
  return _then(_ClassificationTaxonomy(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<TaxonomyOption>,projects: null == projects ? _self._projects : projects // ignore: cast_nullable_to_non_nullable
as List<TaxonomyOption>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<TaxonomyOption>,
  ));
}


}


/// @nodoc
mixin _$TaxonomyOption {

 String get id; String get name;
/// Create a copy of TaxonomyOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaxonomyOptionCopyWith<TaxonomyOption> get copyWith => _$TaxonomyOptionCopyWithImpl<TaxonomyOption>(this as TaxonomyOption, _$identity);

  /// Serializes this TaxonomyOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaxonomyOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'TaxonomyOption(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $TaxonomyOptionCopyWith<$Res>  {
  factory $TaxonomyOptionCopyWith(TaxonomyOption value, $Res Function(TaxonomyOption) _then) = _$TaxonomyOptionCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$TaxonomyOptionCopyWithImpl<$Res>
    implements $TaxonomyOptionCopyWith<$Res> {
  _$TaxonomyOptionCopyWithImpl(this._self, this._then);

  final TaxonomyOption _self;
  final $Res Function(TaxonomyOption) _then;

/// Create a copy of TaxonomyOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(TaxonomyOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TaxonomyOption].
extension TaxonomyOptionPatterns on TaxonomyOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaxonomyOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaxonomyOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaxonomyOption value)  $default,){
final _that = this;
switch (_that) {
case _TaxonomyOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaxonomyOption value)?  $default,){
final _that = this;
switch (_that) {
case _TaxonomyOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaxonomyOption() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _TaxonomyOption():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _TaxonomyOption() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaxonomyOption implements TaxonomyOption {
  const _TaxonomyOption({required this.id, required this.name});
  factory _TaxonomyOption.fromJson(Map<String, dynamic> json) => _$TaxonomyOptionFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of TaxonomyOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaxonomyOptionCopyWith<_TaxonomyOption> get copyWith => __$TaxonomyOptionCopyWithImpl<_TaxonomyOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaxonomyOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaxonomyOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'TaxonomyOption(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$TaxonomyOptionCopyWith<$Res> implements $TaxonomyOptionCopyWith<$Res> {
  factory _$TaxonomyOptionCopyWith(_TaxonomyOption value, $Res Function(_TaxonomyOption) _then) = __$TaxonomyOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$TaxonomyOptionCopyWithImpl<$Res>
    implements _$TaxonomyOptionCopyWith<$Res> {
  __$TaxonomyOptionCopyWithImpl(this._self, this._then);

  final _TaxonomyOption _self;
  final $Res Function(_TaxonomyOption) _then;

/// Create a copy of TaxonomyOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_TaxonomyOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TransactionSummary {

 String get clientRef; String get direction; int get amountMinor; String get transactionType; String get counterparty; String get description; String? get historySummary;
/// Create a copy of TransactionSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionSummaryCopyWith<TransactionSummary> get copyWith => _$TransactionSummaryCopyWithImpl<TransactionSummary>(this as TransactionSummary, _$identity);

  /// Serializes this TransactionSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionSummary&&(identical(other.clientRef, clientRef) || other.clientRef == clientRef)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.amountMinor, amountMinor) || other.amountMinor == amountMinor)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.counterparty, counterparty) || other.counterparty == counterparty)&&(identical(other.description, description) || other.description == description)&&(identical(other.historySummary, historySummary) || other.historySummary == historySummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientRef,direction,amountMinor,transactionType,counterparty,description,historySummary);

@override
String toString() {
  return 'TransactionSummary(clientRef: $clientRef, direction: $direction, amountMinor: $amountMinor, transactionType: $transactionType, counterparty: $counterparty, description: $description, historySummary: $historySummary)';
}


}

/// @nodoc
abstract mixin class $TransactionSummaryCopyWith<$Res>  {
  factory $TransactionSummaryCopyWith(TransactionSummary value, $Res Function(TransactionSummary) _then) = _$TransactionSummaryCopyWithImpl;
@useResult
$Res call({
 String clientRef, String direction, int amountMinor, String transactionType, String counterparty, String description, String? historySummary
});




}
/// @nodoc
class _$TransactionSummaryCopyWithImpl<$Res>
    implements $TransactionSummaryCopyWith<$Res> {
  _$TransactionSummaryCopyWithImpl(this._self, this._then);

  final TransactionSummary _self;
  final $Res Function(TransactionSummary) _then;

/// Create a copy of TransactionSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientRef = null,Object? direction = null,Object? amountMinor = null,Object? transactionType = null,Object? counterparty = null,Object? description = null,Object? historySummary = freezed,}) {
  return _then(TransactionSummary(
clientRef: null == clientRef ? _self.clientRef : clientRef // ignore: cast_nullable_to_non_nullable
as String,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,amountMinor: null == amountMinor ? _self.amountMinor : amountMinor // ignore: cast_nullable_to_non_nullable
as int,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,counterparty: null == counterparty ? _self.counterparty : counterparty // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,historySummary: freezed == historySummary ? _self.historySummary : historySummary // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionSummary].
extension TransactionSummaryPatterns on TransactionSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionSummary value)  $default,){
final _that = this;
switch (_that) {
case _TransactionSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionSummary value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clientRef,  String direction,  int amountMinor,  String transactionType,  String counterparty,  String description,  String? historySummary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionSummary() when $default != null:
return $default(_that.clientRef,_that.direction,_that.amountMinor,_that.transactionType,_that.counterparty,_that.description,_that.historySummary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clientRef,  String direction,  int amountMinor,  String transactionType,  String counterparty,  String description,  String? historySummary)  $default,) {final _that = this;
switch (_that) {
case _TransactionSummary():
return $default(_that.clientRef,_that.direction,_that.amountMinor,_that.transactionType,_that.counterparty,_that.description,_that.historySummary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clientRef,  String direction,  int amountMinor,  String transactionType,  String counterparty,  String description,  String? historySummary)?  $default,) {final _that = this;
switch (_that) {
case _TransactionSummary() when $default != null:
return $default(_that.clientRef,_that.direction,_that.amountMinor,_that.transactionType,_that.counterparty,_that.description,_that.historySummary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionSummary implements TransactionSummary {
  const _TransactionSummary({required this.clientRef, required this.direction, required this.amountMinor, required this.transactionType, required this.counterparty, required this.description, this.historySummary});
  factory _TransactionSummary.fromJson(Map<String, dynamic> json) => _$TransactionSummaryFromJson(json);

@override final  String clientRef;
@override final  String direction;
@override final  int amountMinor;
@override final  String transactionType;
@override final  String counterparty;
@override final  String description;
@override final  String? historySummary;

/// Create a copy of TransactionSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionSummaryCopyWith<_TransactionSummary> get copyWith => __$TransactionSummaryCopyWithImpl<_TransactionSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionSummary&&(identical(other.clientRef, clientRef) || other.clientRef == clientRef)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.amountMinor, amountMinor) || other.amountMinor == amountMinor)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.counterparty, counterparty) || other.counterparty == counterparty)&&(identical(other.description, description) || other.description == description)&&(identical(other.historySummary, historySummary) || other.historySummary == historySummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientRef,direction,amountMinor,transactionType,counterparty,description,historySummary);

@override
String toString() {
  return 'TransactionSummary(clientRef: $clientRef, direction: $direction, amountMinor: $amountMinor, transactionType: $transactionType, counterparty: $counterparty, description: $description, historySummary: $historySummary)';
}


}

/// @nodoc
abstract mixin class _$TransactionSummaryCopyWith<$Res> implements $TransactionSummaryCopyWith<$Res> {
  factory _$TransactionSummaryCopyWith(_TransactionSummary value, $Res Function(_TransactionSummary) _then) = __$TransactionSummaryCopyWithImpl;
@override @useResult
$Res call({
 String clientRef, String direction, int amountMinor, String transactionType, String counterparty, String description, String? historySummary
});




}
/// @nodoc
class __$TransactionSummaryCopyWithImpl<$Res>
    implements _$TransactionSummaryCopyWith<$Res> {
  __$TransactionSummaryCopyWithImpl(this._self, this._then);

  final _TransactionSummary _self;
  final $Res Function(_TransactionSummary) _then;

/// Create a copy of TransactionSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientRef = null,Object? direction = null,Object? amountMinor = null,Object? transactionType = null,Object? counterparty = null,Object? description = null,Object? historySummary = freezed,}) {
  return _then(_TransactionSummary(
clientRef: null == clientRef ? _self.clientRef : clientRef // ignore: cast_nullable_to_non_nullable
as String,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,amountMinor: null == amountMinor ? _self.amountMinor : amountMinor // ignore: cast_nullable_to_non_nullable
as int,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,counterparty: null == counterparty ? _self.counterparty : counterparty // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,historySummary: freezed == historySummary ? _self.historySummary : historySummary // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ClassificationBatchResponse {

 int get schemaVersion; String get model; String get promptVersion; List<ClassificationResult> get results;
/// Create a copy of ClassificationBatchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassificationBatchResponseCopyWith<ClassificationBatchResponse> get copyWith => _$ClassificationBatchResponseCopyWithImpl<ClassificationBatchResponse>(this as ClassificationBatchResponse, _$identity);

  /// Serializes this ClassificationBatchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassificationBatchResponse&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.model, model) || other.model == model)&&(identical(other.promptVersion, promptVersion) || other.promptVersion == promptVersion)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,model,promptVersion,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ClassificationBatchResponse(schemaVersion: $schemaVersion, model: $model, promptVersion: $promptVersion, results: $results)';
}


}

/// @nodoc
abstract mixin class $ClassificationBatchResponseCopyWith<$Res>  {
  factory $ClassificationBatchResponseCopyWith(ClassificationBatchResponse value, $Res Function(ClassificationBatchResponse) _then) = _$ClassificationBatchResponseCopyWithImpl;
@useResult
$Res call({
 int schemaVersion, String model, String promptVersion, List<ClassificationResult> results
});




}
/// @nodoc
class _$ClassificationBatchResponseCopyWithImpl<$Res>
    implements $ClassificationBatchResponseCopyWith<$Res> {
  _$ClassificationBatchResponseCopyWithImpl(this._self, this._then);

  final ClassificationBatchResponse _self;
  final $Res Function(ClassificationBatchResponse) _then;

/// Create a copy of ClassificationBatchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schemaVersion = null,Object? model = null,Object? promptVersion = null,Object? results = null,}) {
  return _then(ClassificationBatchResponse(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,promptVersion: null == promptVersion ? _self.promptVersion : promptVersion // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<ClassificationResult>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassificationBatchResponse].
extension ClassificationBatchResponsePatterns on ClassificationBatchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassificationBatchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassificationBatchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassificationBatchResponse value)  $default,){
final _that = this;
switch (_that) {
case _ClassificationBatchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassificationBatchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ClassificationBatchResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int schemaVersion,  String model,  String promptVersion,  List<ClassificationResult> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassificationBatchResponse() when $default != null:
return $default(_that.schemaVersion,_that.model,_that.promptVersion,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int schemaVersion,  String model,  String promptVersion,  List<ClassificationResult> results)  $default,) {final _that = this;
switch (_that) {
case _ClassificationBatchResponse():
return $default(_that.schemaVersion,_that.model,_that.promptVersion,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int schemaVersion,  String model,  String promptVersion,  List<ClassificationResult> results)?  $default,) {final _that = this;
switch (_that) {
case _ClassificationBatchResponse() when $default != null:
return $default(_that.schemaVersion,_that.model,_that.promptVersion,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassificationBatchResponse implements ClassificationBatchResponse {
  const _ClassificationBatchResponse({required this.schemaVersion, required this.model, required this.promptVersion, required  List<ClassificationResult> results}): _results = results;
  factory _ClassificationBatchResponse.fromJson(Map<String, dynamic> json) => _$ClassificationBatchResponseFromJson(json);

@override final  int schemaVersion;
@override final  String model;
@override final  String promptVersion;
 final  List<ClassificationResult> _results;
@override List<ClassificationResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ClassificationBatchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassificationBatchResponseCopyWith<_ClassificationBatchResponse> get copyWith => __$ClassificationBatchResponseCopyWithImpl<_ClassificationBatchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassificationBatchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassificationBatchResponse&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.model, model) || other.model == model)&&(identical(other.promptVersion, promptVersion) || other.promptVersion == promptVersion)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schemaVersion,model,promptVersion,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'ClassificationBatchResponse(schemaVersion: $schemaVersion, model: $model, promptVersion: $promptVersion, results: $results)';
}


}

/// @nodoc
abstract mixin class _$ClassificationBatchResponseCopyWith<$Res> implements $ClassificationBatchResponseCopyWith<$Res> {
  factory _$ClassificationBatchResponseCopyWith(_ClassificationBatchResponse value, $Res Function(_ClassificationBatchResponse) _then) = __$ClassificationBatchResponseCopyWithImpl;
@override @useResult
$Res call({
 int schemaVersion, String model, String promptVersion, List<ClassificationResult> results
});




}
/// @nodoc
class __$ClassificationBatchResponseCopyWithImpl<$Res>
    implements _$ClassificationBatchResponseCopyWith<$Res> {
  __$ClassificationBatchResponseCopyWithImpl(this._self, this._then);

  final _ClassificationBatchResponse _self;
  final $Res Function(_ClassificationBatchResponse) _then;

/// Create a copy of ClassificationBatchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schemaVersion = null,Object? model = null,Object? promptVersion = null,Object? results = null,}) {
  return _then(_ClassificationBatchResponse(
schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,promptVersion: null == promptVersion ? _self.promptVersion : promptVersion // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<ClassificationResult>,
  ));
}


}


/// @nodoc
mixin _$ClassificationResult {

 String get clientRef; String get nature; String? get categoryId; String? get projectId; List<String> get tagIds; double get confidence; String get reason; bool get needsReview;
/// Create a copy of ClassificationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassificationResultCopyWith<ClassificationResult> get copyWith => _$ClassificationResultCopyWithImpl<ClassificationResult>(this as ClassificationResult, _$identity);

  /// Serializes this ClassificationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassificationResult&&(identical(other.clientRef, clientRef) || other.clientRef == clientRef)&&(identical(other.nature, nature) || other.nature == nature)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&const DeepCollectionEquality().equals(other.tagIds, tagIds)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.needsReview, needsReview) || other.needsReview == needsReview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientRef,nature,categoryId,projectId,const DeepCollectionEquality().hash(tagIds),confidence,reason,needsReview);

@override
String toString() {
  return 'ClassificationResult(clientRef: $clientRef, nature: $nature, categoryId: $categoryId, projectId: $projectId, tagIds: $tagIds, confidence: $confidence, reason: $reason, needsReview: $needsReview)';
}


}

/// @nodoc
abstract mixin class $ClassificationResultCopyWith<$Res>  {
  factory $ClassificationResultCopyWith(ClassificationResult value, $Res Function(ClassificationResult) _then) = _$ClassificationResultCopyWithImpl;
@useResult
$Res call({
 String clientRef, String nature, String? categoryId, String? projectId, List<String> tagIds, double confidence, String reason, bool needsReview
});




}
/// @nodoc
class _$ClassificationResultCopyWithImpl<$Res>
    implements $ClassificationResultCopyWith<$Res> {
  _$ClassificationResultCopyWithImpl(this._self, this._then);

  final ClassificationResult _self;
  final $Res Function(ClassificationResult) _then;

/// Create a copy of ClassificationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientRef = null,Object? nature = null,Object? categoryId = freezed,Object? projectId = freezed,Object? tagIds = null,Object? confidence = null,Object? reason = null,Object? needsReview = null,}) {
  return _then(ClassificationResult(
clientRef: null == clientRef ? _self.clientRef : clientRef // ignore: cast_nullable_to_non_nullable
as String,nature: null == nature ? _self.nature : nature // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String?,tagIds: null == tagIds ? _self.tagIds : tagIds // ignore: cast_nullable_to_non_nullable
as List<String>,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,needsReview: null == needsReview ? _self.needsReview : needsReview // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassificationResult].
extension ClassificationResultPatterns on ClassificationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassificationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassificationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassificationResult value)  $default,){
final _that = this;
switch (_that) {
case _ClassificationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassificationResult value)?  $default,){
final _that = this;
switch (_that) {
case _ClassificationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clientRef,  String nature,  String? categoryId,  String? projectId,  List<String> tagIds,  double confidence,  String reason,  bool needsReview)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassificationResult() when $default != null:
return $default(_that.clientRef,_that.nature,_that.categoryId,_that.projectId,_that.tagIds,_that.confidence,_that.reason,_that.needsReview);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clientRef,  String nature,  String? categoryId,  String? projectId,  List<String> tagIds,  double confidence,  String reason,  bool needsReview)  $default,) {final _that = this;
switch (_that) {
case _ClassificationResult():
return $default(_that.clientRef,_that.nature,_that.categoryId,_that.projectId,_that.tagIds,_that.confidence,_that.reason,_that.needsReview);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clientRef,  String nature,  String? categoryId,  String? projectId,  List<String> tagIds,  double confidence,  String reason,  bool needsReview)?  $default,) {final _that = this;
switch (_that) {
case _ClassificationResult() when $default != null:
return $default(_that.clientRef,_that.nature,_that.categoryId,_that.projectId,_that.tagIds,_that.confidence,_that.reason,_that.needsReview);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassificationResult implements ClassificationResult {
  const _ClassificationResult({required this.clientRef, required this.nature, this.categoryId, this.projectId,  List<String> tagIds = const <String>[], required this.confidence, required this.reason, required this.needsReview}): _tagIds = tagIds;
  factory _ClassificationResult.fromJson(Map<String, dynamic> json) => _$ClassificationResultFromJson(json);

@override final  String clientRef;
@override final  String nature;
@override final  String? categoryId;
@override final  String? projectId;
 final  List<String> _tagIds;
@override@JsonKey() List<String> get tagIds {
  if (_tagIds is EqualUnmodifiableListView) return _tagIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tagIds);
}

@override final  double confidence;
@override final  String reason;
@override final  bool needsReview;

/// Create a copy of ClassificationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassificationResultCopyWith<_ClassificationResult> get copyWith => __$ClassificationResultCopyWithImpl<_ClassificationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassificationResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassificationResult&&(identical(other.clientRef, clientRef) || other.clientRef == clientRef)&&(identical(other.nature, nature) || other.nature == nature)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.projectId, projectId) || other.projectId == projectId)&&const DeepCollectionEquality().equals(other._tagIds, _tagIds)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.needsReview, needsReview) || other.needsReview == needsReview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientRef,nature,categoryId,projectId,const DeepCollectionEquality().hash(_tagIds),confidence,reason,needsReview);

@override
String toString() {
  return 'ClassificationResult(clientRef: $clientRef, nature: $nature, categoryId: $categoryId, projectId: $projectId, tagIds: $tagIds, confidence: $confidence, reason: $reason, needsReview: $needsReview)';
}


}

/// @nodoc
abstract mixin class _$ClassificationResultCopyWith<$Res> implements $ClassificationResultCopyWith<$Res> {
  factory _$ClassificationResultCopyWith(_ClassificationResult value, $Res Function(_ClassificationResult) _then) = __$ClassificationResultCopyWithImpl;
@override @useResult
$Res call({
 String clientRef, String nature, String? categoryId, String? projectId, List<String> tagIds, double confidence, String reason, bool needsReview
});




}
/// @nodoc
class __$ClassificationResultCopyWithImpl<$Res>
    implements _$ClassificationResultCopyWith<$Res> {
  __$ClassificationResultCopyWithImpl(this._self, this._then);

  final _ClassificationResult _self;
  final $Res Function(_ClassificationResult) _then;

/// Create a copy of ClassificationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientRef = null,Object? nature = null,Object? categoryId = freezed,Object? projectId = freezed,Object? tagIds = null,Object? confidence = null,Object? reason = null,Object? needsReview = null,}) {
  return _then(_ClassificationResult(
clientRef: null == clientRef ? _self.clientRef : clientRef // ignore: cast_nullable_to_non_nullable
as String,nature: null == nature ? _self.nature : nature // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,projectId: freezed == projectId ? _self.projectId : projectId // ignore: cast_nullable_to_non_nullable
as String?,tagIds: null == tagIds ? _self._tagIds : tagIds // ignore: cast_nullable_to_non_nullable
as List<String>,confidence: null == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,needsReview: null == needsReview ? _self.needsReview : needsReview // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
