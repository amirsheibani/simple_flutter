// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_ip_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyIpBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? call,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyIpBlocEventCall value) call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MyIpBlocEventCall value)? call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyIpBlocEventCall value)? call,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyIpBlocEventCopyWith<$Res> {
  factory $MyIpBlocEventCopyWith(
          MyIpBlocEvent value, $Res Function(MyIpBlocEvent) then) =
      _$MyIpBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyIpBlocEventCopyWithImpl<$Res>
    implements $MyIpBlocEventCopyWith<$Res> {
  _$MyIpBlocEventCopyWithImpl(this._value, this._then);

  final MyIpBlocEvent _value;
  // ignore: unused_field
  final $Res Function(MyIpBlocEvent) _then;
}

/// @nodoc
abstract class _$$MyIpBlocEventCallCopyWith<$Res> {
  factory _$$MyIpBlocEventCallCopyWith(
          _$MyIpBlocEventCall value, $Res Function(_$MyIpBlocEventCall) then) =
      __$$MyIpBlocEventCallCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyIpBlocEventCallCopyWithImpl<$Res>
    extends _$MyIpBlocEventCopyWithImpl<$Res>
    implements _$$MyIpBlocEventCallCopyWith<$Res> {
  __$$MyIpBlocEventCallCopyWithImpl(
      _$MyIpBlocEventCall _value, $Res Function(_$MyIpBlocEventCall) _then)
      : super(_value, (v) => _then(v as _$MyIpBlocEventCall));

  @override
  _$MyIpBlocEventCall get _value => super._value as _$MyIpBlocEventCall;
}

/// @nodoc

class _$MyIpBlocEventCall implements MyIpBlocEventCall {
  const _$MyIpBlocEventCall();

  @override
  String toString() {
    return 'MyIpBlocEvent.call()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MyIpBlocEventCall);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() call,
  }) {
    return call();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? call,
  }) {
    return call?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? call,
    required TResult orElse(),
  }) {
    if (call != null) {
      return call();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyIpBlocEventCall value) call,
  }) {
    return call(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MyIpBlocEventCall value)? call,
  }) {
    return call?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyIpBlocEventCall value)? call,
    required TResult orElse(),
  }) {
    if (call != null) {
      return call(this);
    }
    return orElse();
  }
}

abstract class MyIpBlocEventCall implements MyIpBlocEvent {
  const factory MyIpBlocEventCall() = _$MyIpBlocEventCall;
}
