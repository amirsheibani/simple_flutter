// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'increment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IncrementState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(int? index) success,
    required TResult Function() loading,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function()? loading,
    TResult Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementStateIdle value) idle,
    required TResult Function(IncrementStateSuccess value) success,
    required TResult Function(IncrementStateLoading value) loading,
    required TResult Function(IncrementStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncrementStateIdle value)? idle,
    TResult Function(IncrementStateSuccess value)? success,
    TResult Function(IncrementStateLoading value)? loading,
    TResult Function(IncrementStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementStateIdle value)? idle,
    TResult Function(IncrementStateSuccess value)? success,
    TResult Function(IncrementStateLoading value)? loading,
    TResult Function(IncrementStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncrementStateCopyWith<$Res> {
  factory $IncrementStateCopyWith(
          IncrementState value, $Res Function(IncrementState) then) =
      _$IncrementStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncrementStateCopyWithImpl<$Res>
    implements $IncrementStateCopyWith<$Res> {
  _$IncrementStateCopyWithImpl(this._value, this._then);

  final IncrementState _value;
  // ignore: unused_field
  final $Res Function(IncrementState) _then;
}

/// @nodoc
abstract class _$$IncrementStateIdleCopyWith<$Res> {
  factory _$$IncrementStateIdleCopyWith(_$IncrementStateIdle value,
          $Res Function(_$IncrementStateIdle) then) =
      __$$IncrementStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementStateIdleCopyWithImpl<$Res>
    extends _$IncrementStateCopyWithImpl<$Res>
    implements _$$IncrementStateIdleCopyWith<$Res> {
  __$$IncrementStateIdleCopyWithImpl(
      _$IncrementStateIdle _value, $Res Function(_$IncrementStateIdle) _then)
      : super(_value, (v) => _then(v as _$IncrementStateIdle));

  @override
  _$IncrementStateIdle get _value => super._value as _$IncrementStateIdle;
}

/// @nodoc

class _$IncrementStateIdle implements IncrementStateIdle {
  const _$IncrementStateIdle();

  @override
  String toString() {
    return 'IncrementState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncrementStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(int? index) success,
    required TResult Function() loading,
    required TResult Function(String message) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function()? loading,
    TResult Function(String message)? failed,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementStateIdle value) idle,
    required TResult Function(IncrementStateSuccess value) success,
    required TResult Function(IncrementStateLoading value) loading,
    required TResult Function(IncrementStateFailed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncrementStateIdle value)? idle,
    TResult Function(IncrementStateSuccess value)? success,
    TResult Function(IncrementStateLoading value)? loading,
    TResult Function(IncrementStateFailed value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementStateIdle value)? idle,
    TResult Function(IncrementStateSuccess value)? success,
    TResult Function(IncrementStateLoading value)? loading,
    TResult Function(IncrementStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IncrementStateIdle implements IncrementState {
  const factory IncrementStateIdle() = _$IncrementStateIdle;
}

/// @nodoc
abstract class _$$IncrementStateSuccessCopyWith<$Res> {
  factory _$$IncrementStateSuccessCopyWith(_$IncrementStateSuccess value,
          $Res Function(_$IncrementStateSuccess) then) =
      __$$IncrementStateSuccessCopyWithImpl<$Res>;
  $Res call({int? index});
}

/// @nodoc
class __$$IncrementStateSuccessCopyWithImpl<$Res>
    extends _$IncrementStateCopyWithImpl<$Res>
    implements _$$IncrementStateSuccessCopyWith<$Res> {
  __$$IncrementStateSuccessCopyWithImpl(_$IncrementStateSuccess _value,
      $Res Function(_$IncrementStateSuccess) _then)
      : super(_value, (v) => _then(v as _$IncrementStateSuccess));

  @override
  _$IncrementStateSuccess get _value => super._value as _$IncrementStateSuccess;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$IncrementStateSuccess(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$IncrementStateSuccess implements IncrementStateSuccess {
  const _$IncrementStateSuccess({this.index});

  @override
  final int? index;

  @override
  String toString() {
    return 'IncrementState.success(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementStateSuccess &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$IncrementStateSuccessCopyWith<_$IncrementStateSuccess> get copyWith =>
      __$$IncrementStateSuccessCopyWithImpl<_$IncrementStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(int? index) success,
    required TResult Function() loading,
    required TResult Function(String message) failed,
  }) {
    return success(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function()? loading,
    TResult Function(String message)? failed,
  }) {
    return success?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementStateIdle value) idle,
    required TResult Function(IncrementStateSuccess value) success,
    required TResult Function(IncrementStateLoading value) loading,
    required TResult Function(IncrementStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncrementStateIdle value)? idle,
    TResult Function(IncrementStateSuccess value)? success,
    TResult Function(IncrementStateLoading value)? loading,
    TResult Function(IncrementStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementStateIdle value)? idle,
    TResult Function(IncrementStateSuccess value)? success,
    TResult Function(IncrementStateLoading value)? loading,
    TResult Function(IncrementStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class IncrementStateSuccess implements IncrementState {
  const factory IncrementStateSuccess({final int? index}) =
      _$IncrementStateSuccess;

  int? get index;
  @JsonKey(ignore: true)
  _$$IncrementStateSuccessCopyWith<_$IncrementStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementStateLoadingCopyWith<$Res> {
  factory _$$IncrementStateLoadingCopyWith(_$IncrementStateLoading value,
          $Res Function(_$IncrementStateLoading) then) =
      __$$IncrementStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementStateLoadingCopyWithImpl<$Res>
    extends _$IncrementStateCopyWithImpl<$Res>
    implements _$$IncrementStateLoadingCopyWith<$Res> {
  __$$IncrementStateLoadingCopyWithImpl(_$IncrementStateLoading _value,
      $Res Function(_$IncrementStateLoading) _then)
      : super(_value, (v) => _then(v as _$IncrementStateLoading));

  @override
  _$IncrementStateLoading get _value => super._value as _$IncrementStateLoading;
}

/// @nodoc

class _$IncrementStateLoading implements IncrementStateLoading {
  const _$IncrementStateLoading();

  @override
  String toString() {
    return 'IncrementState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncrementStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(int? index) success,
    required TResult Function() loading,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function()? loading,
    TResult Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementStateIdle value) idle,
    required TResult Function(IncrementStateSuccess value) success,
    required TResult Function(IncrementStateLoading value) loading,
    required TResult Function(IncrementStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncrementStateIdle value)? idle,
    TResult Function(IncrementStateSuccess value)? success,
    TResult Function(IncrementStateLoading value)? loading,
    TResult Function(IncrementStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementStateIdle value)? idle,
    TResult Function(IncrementStateSuccess value)? success,
    TResult Function(IncrementStateLoading value)? loading,
    TResult Function(IncrementStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class IncrementStateLoading implements IncrementState {
  const factory IncrementStateLoading() = _$IncrementStateLoading;
}

/// @nodoc
abstract class _$$IncrementStateFailedCopyWith<$Res> {
  factory _$$IncrementStateFailedCopyWith(_$IncrementStateFailed value,
          $Res Function(_$IncrementStateFailed) then) =
      __$$IncrementStateFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$IncrementStateFailedCopyWithImpl<$Res>
    extends _$IncrementStateCopyWithImpl<$Res>
    implements _$$IncrementStateFailedCopyWith<$Res> {
  __$$IncrementStateFailedCopyWithImpl(_$IncrementStateFailed _value,
      $Res Function(_$IncrementStateFailed) _then)
      : super(_value, (v) => _then(v as _$IncrementStateFailed));

  @override
  _$IncrementStateFailed get _value => super._value as _$IncrementStateFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$IncrementStateFailed(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IncrementStateFailed implements IncrementStateFailed {
  const _$IncrementStateFailed(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'IncrementState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementStateFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$IncrementStateFailedCopyWith<_$IncrementStateFailed> get copyWith =>
      __$$IncrementStateFailedCopyWithImpl<_$IncrementStateFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(int? index) success,
    required TResult Function() loading,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function()? loading,
    TResult Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementStateIdle value) idle,
    required TResult Function(IncrementStateSuccess value) success,
    required TResult Function(IncrementStateLoading value) loading,
    required TResult Function(IncrementStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncrementStateIdle value)? idle,
    TResult Function(IncrementStateSuccess value)? success,
    TResult Function(IncrementStateLoading value)? loading,
    TResult Function(IncrementStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementStateIdle value)? idle,
    TResult Function(IncrementStateSuccess value)? success,
    TResult Function(IncrementStateLoading value)? loading,
    TResult Function(IncrementStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class IncrementStateFailed implements IncrementState {
  const factory IncrementStateFailed(final String message) =
      _$IncrementStateFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$IncrementStateFailedCopyWith<_$IncrementStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
