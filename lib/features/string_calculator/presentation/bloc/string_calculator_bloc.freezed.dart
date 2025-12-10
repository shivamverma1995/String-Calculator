// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'string_calculator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StringCalculatorEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StringCalculatorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StringCalculatorEvent()';
}


}

/// @nodoc
class $StringCalculatorEventCopyWith<$Res>  {
$StringCalculatorEventCopyWith(StringCalculatorEvent _, $Res Function(StringCalculatorEvent) __);
}


/// Adds pattern-matching-related methods to [StringCalculatorEvent].
extension StringCalculatorEventPatterns on StringCalculatorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InputChanged value)?  inputChanged,TResult Function( _Submitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InputChanged() when inputChanged != null:
return inputChanged(_that);case _Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InputChanged value)  inputChanged,required TResult Function( _Submitted value)  submitted,}){
final _that = this;
switch (_that) {
case _InputChanged():
return inputChanged(_that);case _Submitted():
return submitted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InputChanged value)?  inputChanged,TResult? Function( _Submitted value)?  submitted,}){
final _that = this;
switch (_that) {
case _InputChanged() when inputChanged != null:
return inputChanged(_that);case _Submitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String input)?  inputChanged,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InputChanged() when inputChanged != null:
return inputChanged(_that.input);case _Submitted() when submitted != null:
return submitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String input)  inputChanged,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case _InputChanged():
return inputChanged(_that.input);case _Submitted():
return submitted();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String input)?  inputChanged,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case _InputChanged() when inputChanged != null:
return inputChanged(_that.input);case _Submitted() when submitted != null:
return submitted();case _:
  return null;

}
}

}

/// @nodoc


class _InputChanged implements StringCalculatorEvent {
  const _InputChanged(this.input);
  

 final  String input;

/// Create a copy of StringCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputChangedCopyWith<_InputChanged> get copyWith => __$InputChangedCopyWithImpl<_InputChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputChanged&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'StringCalculatorEvent.inputChanged(input: $input)';
}


}

/// @nodoc
abstract mixin class _$InputChangedCopyWith<$Res> implements $StringCalculatorEventCopyWith<$Res> {
  factory _$InputChangedCopyWith(_InputChanged value, $Res Function(_InputChanged) _then) = __$InputChangedCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class __$InputChangedCopyWithImpl<$Res>
    implements _$InputChangedCopyWith<$Res> {
  __$InputChangedCopyWithImpl(this._self, this._then);

  final _InputChanged _self;
  final $Res Function(_InputChanged) _then;

/// Create a copy of StringCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_InputChanged(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Submitted implements StringCalculatorEvent {
  const _Submitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StringCalculatorEvent.submitted()';
}


}




/// @nodoc
mixin _$StringCalculatorState {

 String get input; int? get result; String? get error; bool get isLoading;
/// Create a copy of StringCalculatorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StringCalculatorStateCopyWith<StringCalculatorState> get copyWith => _$StringCalculatorStateCopyWithImpl<StringCalculatorState>(this as StringCalculatorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StringCalculatorState&&(identical(other.input, input) || other.input == input)&&(identical(other.result, result) || other.result == result)&&(identical(other.error, error) || other.error == error)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,input,result,error,isLoading);

@override
String toString() {
  return 'StringCalculatorState(input: $input, result: $result, error: $error, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $StringCalculatorStateCopyWith<$Res>  {
  factory $StringCalculatorStateCopyWith(StringCalculatorState value, $Res Function(StringCalculatorState) _then) = _$StringCalculatorStateCopyWithImpl;
@useResult
$Res call({
 String input, int? result, String? error, bool isLoading
});




}
/// @nodoc
class _$StringCalculatorStateCopyWithImpl<$Res>
    implements $StringCalculatorStateCopyWith<$Res> {
  _$StringCalculatorStateCopyWithImpl(this._self, this._then);

  final StringCalculatorState _self;
  final $Res Function(StringCalculatorState) _then;

/// Create a copy of StringCalculatorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,Object? result = freezed,Object? error = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as int?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StringCalculatorState].
extension StringCalculatorStatePatterns on StringCalculatorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StringCalculatorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StringCalculatorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StringCalculatorState value)  $default,){
final _that = this;
switch (_that) {
case _StringCalculatorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StringCalculatorState value)?  $default,){
final _that = this;
switch (_that) {
case _StringCalculatorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String input,  int? result,  String? error,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StringCalculatorState() when $default != null:
return $default(_that.input,_that.result,_that.error,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String input,  int? result,  String? error,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _StringCalculatorState():
return $default(_that.input,_that.result,_that.error,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String input,  int? result,  String? error,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _StringCalculatorState() when $default != null:
return $default(_that.input,_that.result,_that.error,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _StringCalculatorState implements StringCalculatorState {
  const _StringCalculatorState({this.input = "", this.result, this.error, this.isLoading = false});
  

@override@JsonKey() final  String input;
@override final  int? result;
@override final  String? error;
@override@JsonKey() final  bool isLoading;

/// Create a copy of StringCalculatorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StringCalculatorStateCopyWith<_StringCalculatorState> get copyWith => __$StringCalculatorStateCopyWithImpl<_StringCalculatorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StringCalculatorState&&(identical(other.input, input) || other.input == input)&&(identical(other.result, result) || other.result == result)&&(identical(other.error, error) || other.error == error)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,input,result,error,isLoading);

@override
String toString() {
  return 'StringCalculatorState(input: $input, result: $result, error: $error, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$StringCalculatorStateCopyWith<$Res> implements $StringCalculatorStateCopyWith<$Res> {
  factory _$StringCalculatorStateCopyWith(_StringCalculatorState value, $Res Function(_StringCalculatorState) _then) = __$StringCalculatorStateCopyWithImpl;
@override @useResult
$Res call({
 String input, int? result, String? error, bool isLoading
});




}
/// @nodoc
class __$StringCalculatorStateCopyWithImpl<$Res>
    implements _$StringCalculatorStateCopyWith<$Res> {
  __$StringCalculatorStateCopyWithImpl(this._self, this._then);

  final _StringCalculatorState _self;
  final $Res Function(_StringCalculatorState) _then;

/// Create a copy of StringCalculatorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,Object? result = freezed,Object? error = freezed,Object? isLoading = null,}) {
  return _then(_StringCalculatorState(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as int?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
