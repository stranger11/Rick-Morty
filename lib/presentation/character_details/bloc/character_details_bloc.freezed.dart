// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterDetailsEvent {

 int get characterId;
/// Create a copy of CharacterDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterDetailsEventCopyWith<CharacterDetailsEvent> get copyWith => _$CharacterDetailsEventCopyWithImpl<CharacterDetailsEvent>(this as CharacterDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterDetailsEvent&&(identical(other.characterId, characterId) || other.characterId == characterId));
}


@override
int get hashCode => Object.hash(runtimeType,characterId);

@override
String toString() {
  return 'CharacterDetailsEvent(characterId: $characterId)';
}


}

/// @nodoc
abstract mixin class $CharacterDetailsEventCopyWith<$Res>  {
  factory $CharacterDetailsEventCopyWith(CharacterDetailsEvent value, $Res Function(CharacterDetailsEvent) _then) = _$CharacterDetailsEventCopyWithImpl;
@useResult
$Res call({
 int characterId
});




}
/// @nodoc
class _$CharacterDetailsEventCopyWithImpl<$Res>
    implements $CharacterDetailsEventCopyWith<$Res> {
  _$CharacterDetailsEventCopyWithImpl(this._self, this._then);

  final CharacterDetailsEvent _self;
  final $Res Function(CharacterDetailsEvent) _then;

/// Create a copy of CharacterDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? characterId = null,}) {
  return _then(_self.copyWith(
characterId: null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CharacterDetailsEvent].
extension CharacterDetailsEventPatterns on CharacterDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CharacterDetailsInit value)?  init,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CharacterDetailsInit() when init != null:
return init(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CharacterDetailsInit value)  init,}){
final _that = this;
switch (_that) {
case CharacterDetailsInit():
return init(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CharacterDetailsInit value)?  init,}){
final _that = this;
switch (_that) {
case CharacterDetailsInit() when init != null:
return init(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int characterId)?  init,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CharacterDetailsInit() when init != null:
return init(_that.characterId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int characterId)  init,}) {final _that = this;
switch (_that) {
case CharacterDetailsInit():
return init(_that.characterId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int characterId)?  init,}) {final _that = this;
switch (_that) {
case CharacterDetailsInit() when init != null:
return init(_that.characterId);case _:
  return null;

}
}

}

/// @nodoc


class CharacterDetailsInit implements CharacterDetailsEvent {
   CharacterDetailsInit(this.characterId);
  

@override final  int characterId;

/// Create a copy of CharacterDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterDetailsInitCopyWith<CharacterDetailsInit> get copyWith => _$CharacterDetailsInitCopyWithImpl<CharacterDetailsInit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterDetailsInit&&(identical(other.characterId, characterId) || other.characterId == characterId));
}


@override
int get hashCode => Object.hash(runtimeType,characterId);

@override
String toString() {
  return 'CharacterDetailsEvent.init(characterId: $characterId)';
}


}

/// @nodoc
abstract mixin class $CharacterDetailsInitCopyWith<$Res> implements $CharacterDetailsEventCopyWith<$Res> {
  factory $CharacterDetailsInitCopyWith(CharacterDetailsInit value, $Res Function(CharacterDetailsInit) _then) = _$CharacterDetailsInitCopyWithImpl;
@override @useResult
$Res call({
 int characterId
});




}
/// @nodoc
class _$CharacterDetailsInitCopyWithImpl<$Res>
    implements $CharacterDetailsInitCopyWith<$Res> {
  _$CharacterDetailsInitCopyWithImpl(this._self, this._then);

  final CharacterDetailsInit _self;
  final $Res Function(CharacterDetailsInit) _then;

/// Create a copy of CharacterDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? characterId = null,}) {
  return _then(CharacterDetailsInit(
null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CharacterDetailsState {

 bool get isLoading; CharacterDetails? get details; String? get errorKey; BlocAction? get action;
/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterDetailsStateCopyWith<CharacterDetailsState> get copyWith => _$CharacterDetailsStateCopyWithImpl<CharacterDetailsState>(this as CharacterDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterDetailsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.details, details) || other.details == details)&&(identical(other.errorKey, errorKey) || other.errorKey == errorKey)&&(identical(other.action, action) || other.action == action));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,details,errorKey,action);

@override
String toString() {
  return 'CharacterDetailsState(isLoading: $isLoading, details: $details, errorKey: $errorKey, action: $action)';
}


}

/// @nodoc
abstract mixin class $CharacterDetailsStateCopyWith<$Res>  {
  factory $CharacterDetailsStateCopyWith(CharacterDetailsState value, $Res Function(CharacterDetailsState) _then) = _$CharacterDetailsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, CharacterDetails? details, String? errorKey, BlocAction? action
});




}
/// @nodoc
class _$CharacterDetailsStateCopyWithImpl<$Res>
    implements $CharacterDetailsStateCopyWith<$Res> {
  _$CharacterDetailsStateCopyWithImpl(this._self, this._then);

  final CharacterDetailsState _self;
  final $Res Function(CharacterDetailsState) _then;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? details = freezed,Object? errorKey = freezed,Object? action = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as CharacterDetails?,errorKey: freezed == errorKey ? _self.errorKey : errorKey // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as BlocAction?,
  ));
}

}


/// Adds pattern-matching-related methods to [CharacterDetailsState].
extension CharacterDetailsStatePatterns on CharacterDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _CharacterDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  CharacterDetails? details,  String? errorKey,  BlocAction? action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterDetailsState() when $default != null:
return $default(_that.isLoading,_that.details,_that.errorKey,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  CharacterDetails? details,  String? errorKey,  BlocAction? action)  $default,) {final _that = this;
switch (_that) {
case _CharacterDetailsState():
return $default(_that.isLoading,_that.details,_that.errorKey,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  CharacterDetails? details,  String? errorKey,  BlocAction? action)?  $default,) {final _that = this;
switch (_that) {
case _CharacterDetailsState() when $default != null:
return $default(_that.isLoading,_that.details,_that.errorKey,_that.action);case _:
  return null;

}
}

}

/// @nodoc


class _CharacterDetailsState extends CharacterDetailsState {
   _CharacterDetailsState({this.isLoading = false, this.details, this.errorKey, this.action}): super._();
  

@override@JsonKey() final  bool isLoading;
@override final  CharacterDetails? details;
@override final  String? errorKey;
@override final  BlocAction? action;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterDetailsStateCopyWith<_CharacterDetailsState> get copyWith => __$CharacterDetailsStateCopyWithImpl<_CharacterDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterDetailsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.details, details) || other.details == details)&&(identical(other.errorKey, errorKey) || other.errorKey == errorKey)&&(identical(other.action, action) || other.action == action));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,details,errorKey,action);

@override
String toString() {
  return 'CharacterDetailsState(isLoading: $isLoading, details: $details, errorKey: $errorKey, action: $action)';
}


}

/// @nodoc
abstract mixin class _$CharacterDetailsStateCopyWith<$Res> implements $CharacterDetailsStateCopyWith<$Res> {
  factory _$CharacterDetailsStateCopyWith(_CharacterDetailsState value, $Res Function(_CharacterDetailsState) _then) = __$CharacterDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, CharacterDetails? details, String? errorKey, BlocAction? action
});




}
/// @nodoc
class __$CharacterDetailsStateCopyWithImpl<$Res>
    implements _$CharacterDetailsStateCopyWith<$Res> {
  __$CharacterDetailsStateCopyWithImpl(this._self, this._then);

  final _CharacterDetailsState _self;
  final $Res Function(_CharacterDetailsState) _then;

/// Create a copy of CharacterDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? details = freezed,Object? errorKey = freezed,Object? action = freezed,}) {
  return _then(_CharacterDetailsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as CharacterDetails?,errorKey: freezed == errorKey ? _self.errorKey : errorKey // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as BlocAction?,
  ));
}


}

// dart format on
