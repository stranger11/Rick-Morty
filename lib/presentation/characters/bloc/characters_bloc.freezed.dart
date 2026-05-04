// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharactersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersEvent()';
}


}

/// @nodoc
class $CharactersEventCopyWith<$Res>  {
$CharactersEventCopyWith(CharactersEvent _, $Res Function(CharactersEvent) __);
}


/// Adds pattern-matching-related methods to [CharactersEvent].
extension CharactersEventPatterns on CharactersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CharactersInit value)?  init,TResult Function( CharactersLoadMore value)?  loadMore,TResult Function( OpenCharacterDetails value)?  openCharacterDetails,TResult Function( OpenSettings value)?  openSettings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CharactersInit() when init != null:
return init(_that);case CharactersLoadMore() when loadMore != null:
return loadMore(_that);case OpenCharacterDetails() when openCharacterDetails != null:
return openCharacterDetails(_that);case OpenSettings() when openSettings != null:
return openSettings(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CharactersInit value)  init,required TResult Function( CharactersLoadMore value)  loadMore,required TResult Function( OpenCharacterDetails value)  openCharacterDetails,required TResult Function( OpenSettings value)  openSettings,}){
final _that = this;
switch (_that) {
case CharactersInit():
return init(_that);case CharactersLoadMore():
return loadMore(_that);case OpenCharacterDetails():
return openCharacterDetails(_that);case OpenSettings():
return openSettings(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CharactersInit value)?  init,TResult? Function( CharactersLoadMore value)?  loadMore,TResult? Function( OpenCharacterDetails value)?  openCharacterDetails,TResult? Function( OpenSettings value)?  openSettings,}){
final _that = this;
switch (_that) {
case CharactersInit() when init != null:
return init(_that);case CharactersLoadMore() when loadMore != null:
return loadMore(_that);case OpenCharacterDetails() when openCharacterDetails != null:
return openCharacterDetails(_that);case OpenSettings() when openSettings != null:
return openSettings(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  loadMore,TResult Function( int characterId)?  openCharacterDetails,TResult Function()?  openSettings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CharactersInit() when init != null:
return init();case CharactersLoadMore() when loadMore != null:
return loadMore();case OpenCharacterDetails() when openCharacterDetails != null:
return openCharacterDetails(_that.characterId);case OpenSettings() when openSettings != null:
return openSettings();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  loadMore,required TResult Function( int characterId)  openCharacterDetails,required TResult Function()  openSettings,}) {final _that = this;
switch (_that) {
case CharactersInit():
return init();case CharactersLoadMore():
return loadMore();case OpenCharacterDetails():
return openCharacterDetails(_that.characterId);case OpenSettings():
return openSettings();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  loadMore,TResult? Function( int characterId)?  openCharacterDetails,TResult? Function()?  openSettings,}) {final _that = this;
switch (_that) {
case CharactersInit() when init != null:
return init();case CharactersLoadMore() when loadMore != null:
return loadMore();case OpenCharacterDetails() when openCharacterDetails != null:
return openCharacterDetails(_that.characterId);case OpenSettings() when openSettings != null:
return openSettings();case _:
  return null;

}
}

}

/// @nodoc


class CharactersInit implements CharactersEvent {
   CharactersInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersEvent.init()';
}


}




/// @nodoc


class CharactersLoadMore implements CharactersEvent {
   CharactersLoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersLoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersEvent.loadMore()';
}


}




/// @nodoc


class OpenCharacterDetails implements CharactersEvent {
   OpenCharacterDetails(this.characterId);
  

 final  int characterId;

/// Create a copy of CharactersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenCharacterDetailsCopyWith<OpenCharacterDetails> get copyWith => _$OpenCharacterDetailsCopyWithImpl<OpenCharacterDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenCharacterDetails&&(identical(other.characterId, characterId) || other.characterId == characterId));
}


@override
int get hashCode => Object.hash(runtimeType,characterId);

@override
String toString() {
  return 'CharactersEvent.openCharacterDetails(characterId: $characterId)';
}


}

/// @nodoc
abstract mixin class $OpenCharacterDetailsCopyWith<$Res> implements $CharactersEventCopyWith<$Res> {
  factory $OpenCharacterDetailsCopyWith(OpenCharacterDetails value, $Res Function(OpenCharacterDetails) _then) = _$OpenCharacterDetailsCopyWithImpl;
@useResult
$Res call({
 int characterId
});




}
/// @nodoc
class _$OpenCharacterDetailsCopyWithImpl<$Res>
    implements $OpenCharacterDetailsCopyWith<$Res> {
  _$OpenCharacterDetailsCopyWithImpl(this._self, this._then);

  final OpenCharacterDetails _self;
  final $Res Function(OpenCharacterDetails) _then;

/// Create a copy of CharactersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? characterId = null,}) {
  return _then(OpenCharacterDetails(
null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OpenSettings implements CharactersEvent {
   OpenSettings();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenSettings);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharactersEvent.openSettings()';
}


}




/// @nodoc
mixin _$CharactersState {

 bool get isLoading; bool get isPageLoading; int get page; int get size; int get prevLength; int get currentLength; List<Character> get characters; String? get errorKey; int? get retryAfterSeconds; BlocAction? get action;
/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharactersStateCopyWith<CharactersState> get copyWith => _$CharactersStateCopyWithImpl<CharactersState>(this as CharactersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharactersState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isPageLoading, isPageLoading) || other.isPageLoading == isPageLoading)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.prevLength, prevLength) || other.prevLength == prevLength)&&(identical(other.currentLength, currentLength) || other.currentLength == currentLength)&&const DeepCollectionEquality().equals(other.characters, characters)&&(identical(other.errorKey, errorKey) || other.errorKey == errorKey)&&(identical(other.retryAfterSeconds, retryAfterSeconds) || other.retryAfterSeconds == retryAfterSeconds)&&(identical(other.action, action) || other.action == action));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isPageLoading,page,size,prevLength,currentLength,const DeepCollectionEquality().hash(characters),errorKey,retryAfterSeconds,action);

@override
String toString() {
  return 'CharactersState(isLoading: $isLoading, isPageLoading: $isPageLoading, page: $page, size: $size, prevLength: $prevLength, currentLength: $currentLength, characters: $characters, errorKey: $errorKey, retryAfterSeconds: $retryAfterSeconds, action: $action)';
}


}

/// @nodoc
abstract mixin class $CharactersStateCopyWith<$Res>  {
  factory $CharactersStateCopyWith(CharactersState value, $Res Function(CharactersState) _then) = _$CharactersStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isPageLoading, int page, int size, int prevLength, int currentLength, List<Character> characters, String? errorKey, int? retryAfterSeconds, BlocAction? action
});




}
/// @nodoc
class _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._self, this._then);

  final CharactersState _self;
  final $Res Function(CharactersState) _then;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isPageLoading = null,Object? page = null,Object? size = null,Object? prevLength = null,Object? currentLength = null,Object? characters = null,Object? errorKey = freezed,Object? retryAfterSeconds = freezed,Object? action = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPageLoading: null == isPageLoading ? _self.isPageLoading : isPageLoading // ignore: cast_nullable_to_non_nullable
as bool,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,prevLength: null == prevLength ? _self.prevLength : prevLength // ignore: cast_nullable_to_non_nullable
as int,currentLength: null == currentLength ? _self.currentLength : currentLength // ignore: cast_nullable_to_non_nullable
as int,characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>,errorKey: freezed == errorKey ? _self.errorKey : errorKey // ignore: cast_nullable_to_non_nullable
as String?,retryAfterSeconds: freezed == retryAfterSeconds ? _self.retryAfterSeconds : retryAfterSeconds // ignore: cast_nullable_to_non_nullable
as int?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as BlocAction?,
  ));
}

}


/// Adds pattern-matching-related methods to [CharactersState].
extension CharactersStatePatterns on CharactersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharactersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharactersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharactersState value)  $default,){
final _that = this;
switch (_that) {
case _CharactersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharactersState value)?  $default,){
final _that = this;
switch (_that) {
case _CharactersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isPageLoading,  int page,  int size,  int prevLength,  int currentLength,  List<Character> characters,  String? errorKey,  int? retryAfterSeconds,  BlocAction? action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharactersState() when $default != null:
return $default(_that.isLoading,_that.isPageLoading,_that.page,_that.size,_that.prevLength,_that.currentLength,_that.characters,_that.errorKey,_that.retryAfterSeconds,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isPageLoading,  int page,  int size,  int prevLength,  int currentLength,  List<Character> characters,  String? errorKey,  int? retryAfterSeconds,  BlocAction? action)  $default,) {final _that = this;
switch (_that) {
case _CharactersState():
return $default(_that.isLoading,_that.isPageLoading,_that.page,_that.size,_that.prevLength,_that.currentLength,_that.characters,_that.errorKey,_that.retryAfterSeconds,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isPageLoading,  int page,  int size,  int prevLength,  int currentLength,  List<Character> characters,  String? errorKey,  int? retryAfterSeconds,  BlocAction? action)?  $default,) {final _that = this;
switch (_that) {
case _CharactersState() when $default != null:
return $default(_that.isLoading,_that.isPageLoading,_that.page,_that.size,_that.prevLength,_that.currentLength,_that.characters,_that.errorKey,_that.retryAfterSeconds,_that.action);case _:
  return null;

}
}

}

/// @nodoc


class _CharactersState extends CharactersState {
   _CharactersState({this.isLoading = false, this.isPageLoading = false, this.page = 1, this.size = 20, this.prevLength = 0, this.currentLength = 0, final  List<Character> characters = const <Character>[], this.errorKey, this.retryAfterSeconds, this.action}): _characters = characters,super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isPageLoading;
@override@JsonKey() final  int page;
@override@JsonKey() final  int size;
@override@JsonKey() final  int prevLength;
@override@JsonKey() final  int currentLength;
 final  List<Character> _characters;
@override@JsonKey() List<Character> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}

@override final  String? errorKey;
@override final  int? retryAfterSeconds;
@override final  BlocAction? action;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharactersStateCopyWith<_CharactersState> get copyWith => __$CharactersStateCopyWithImpl<_CharactersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharactersState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isPageLoading, isPageLoading) || other.isPageLoading == isPageLoading)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.prevLength, prevLength) || other.prevLength == prevLength)&&(identical(other.currentLength, currentLength) || other.currentLength == currentLength)&&const DeepCollectionEquality().equals(other._characters, _characters)&&(identical(other.errorKey, errorKey) || other.errorKey == errorKey)&&(identical(other.retryAfterSeconds, retryAfterSeconds) || other.retryAfterSeconds == retryAfterSeconds)&&(identical(other.action, action) || other.action == action));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isPageLoading,page,size,prevLength,currentLength,const DeepCollectionEquality().hash(_characters),errorKey,retryAfterSeconds,action);

@override
String toString() {
  return 'CharactersState(isLoading: $isLoading, isPageLoading: $isPageLoading, page: $page, size: $size, prevLength: $prevLength, currentLength: $currentLength, characters: $characters, errorKey: $errorKey, retryAfterSeconds: $retryAfterSeconds, action: $action)';
}


}

/// @nodoc
abstract mixin class _$CharactersStateCopyWith<$Res> implements $CharactersStateCopyWith<$Res> {
  factory _$CharactersStateCopyWith(_CharactersState value, $Res Function(_CharactersState) _then) = __$CharactersStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isPageLoading, int page, int size, int prevLength, int currentLength, List<Character> characters, String? errorKey, int? retryAfterSeconds, BlocAction? action
});




}
/// @nodoc
class __$CharactersStateCopyWithImpl<$Res>
    implements _$CharactersStateCopyWith<$Res> {
  __$CharactersStateCopyWithImpl(this._self, this._then);

  final _CharactersState _self;
  final $Res Function(_CharactersState) _then;

/// Create a copy of CharactersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isPageLoading = null,Object? page = null,Object? size = null,Object? prevLength = null,Object? currentLength = null,Object? characters = null,Object? errorKey = freezed,Object? retryAfterSeconds = freezed,Object? action = freezed,}) {
  return _then(_CharactersState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPageLoading: null == isPageLoading ? _self.isPageLoading : isPageLoading // ignore: cast_nullable_to_non_nullable
as bool,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,prevLength: null == prevLength ? _self.prevLength : prevLength // ignore: cast_nullable_to_non_nullable
as int,currentLength: null == currentLength ? _self.currentLength : currentLength // ignore: cast_nullable_to_non_nullable
as int,characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>,errorKey: freezed == errorKey ? _self.errorKey : errorKey // ignore: cast_nullable_to_non_nullable
as String?,retryAfterSeconds: freezed == retryAfterSeconds ? _self.retryAfterSeconds : retryAfterSeconds // ignore: cast_nullable_to_non_nullable
as int?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as BlocAction?,
  ));
}


}

// dart format on
