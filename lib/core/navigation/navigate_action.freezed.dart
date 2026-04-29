// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigate_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigateAction {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigateAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NavigateAction()';
}


}

/// @nodoc
class $NavigateActionCopyWith<$Res>  {
$NavigateActionCopyWith(NavigateAction _, $Res Function(NavigateAction) __);
}


/// Adds pattern-matching-related methods to [NavigateAction].
extension NavigateActionPatterns on NavigateAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NavigateBack value)?  navigateBack,TResult Function( NavigateToCharacterDetails value)?  navigateToCharacterDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NavigateBack() when navigateBack != null:
return navigateBack(_that);case NavigateToCharacterDetails() when navigateToCharacterDetails != null:
return navigateToCharacterDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NavigateBack value)  navigateBack,required TResult Function( NavigateToCharacterDetails value)  navigateToCharacterDetails,}){
final _that = this;
switch (_that) {
case NavigateBack():
return navigateBack(_that);case NavigateToCharacterDetails():
return navigateToCharacterDetails(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NavigateBack value)?  navigateBack,TResult? Function( NavigateToCharacterDetails value)?  navigateToCharacterDetails,}){
final _that = this;
switch (_that) {
case NavigateBack() when navigateBack != null:
return navigateBack(_that);case NavigateToCharacterDetails() when navigateToCharacterDetails != null:
return navigateToCharacterDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  navigateBack,TResult Function( NavigateType navigateType,  int characterId)?  navigateToCharacterDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NavigateBack() when navigateBack != null:
return navigateBack();case NavigateToCharacterDetails() when navigateToCharacterDetails != null:
return navigateToCharacterDetails(_that.navigateType,_that.characterId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  navigateBack,required TResult Function( NavigateType navigateType,  int characterId)  navigateToCharacterDetails,}) {final _that = this;
switch (_that) {
case NavigateBack():
return navigateBack();case NavigateToCharacterDetails():
return navigateToCharacterDetails(_that.navigateType,_that.characterId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  navigateBack,TResult? Function( NavigateType navigateType,  int characterId)?  navigateToCharacterDetails,}) {final _that = this;
switch (_that) {
case NavigateBack() when navigateBack != null:
return navigateBack();case NavigateToCharacterDetails() when navigateToCharacterDetails != null:
return navigateToCharacterDetails(_that.navigateType,_that.characterId);case _:
  return null;

}
}

}

/// @nodoc


class NavigateBack extends NavigateAction {
   NavigateBack(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigateBack);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NavigateAction.navigateBack()';
}


}




/// @nodoc


class NavigateToCharacterDetails extends NavigateAction {
   NavigateToCharacterDetails(this.navigateType, this.characterId): super._();
  

 final  NavigateType navigateType;
 final  int characterId;

/// Create a copy of NavigateAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigateToCharacterDetailsCopyWith<NavigateToCharacterDetails> get copyWith => _$NavigateToCharacterDetailsCopyWithImpl<NavigateToCharacterDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigateToCharacterDetails&&(identical(other.navigateType, navigateType) || other.navigateType == navigateType)&&(identical(other.characterId, characterId) || other.characterId == characterId));
}


@override
int get hashCode => Object.hash(runtimeType,navigateType,characterId);

@override
String toString() {
  return 'NavigateAction.navigateToCharacterDetails(navigateType: $navigateType, characterId: $characterId)';
}


}

/// @nodoc
abstract mixin class $NavigateToCharacterDetailsCopyWith<$Res> implements $NavigateActionCopyWith<$Res> {
  factory $NavigateToCharacterDetailsCopyWith(NavigateToCharacterDetails value, $Res Function(NavigateToCharacterDetails) _then) = _$NavigateToCharacterDetailsCopyWithImpl;
@useResult
$Res call({
 NavigateType navigateType, int characterId
});




}
/// @nodoc
class _$NavigateToCharacterDetailsCopyWithImpl<$Res>
    implements $NavigateToCharacterDetailsCopyWith<$Res> {
  _$NavigateToCharacterDetailsCopyWithImpl(this._self, this._then);

  final NavigateToCharacterDetails _self;
  final $Res Function(NavigateToCharacterDetails) _then;

/// Create a copy of NavigateAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? navigateType = null,Object? characterId = null,}) {
  return _then(NavigateToCharacterDetails(
null == navigateType ? _self.navigateType : navigateType // ignore: cast_nullable_to_non_nullable
as NavigateType,null == characterId ? _self.characterId : characterId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
