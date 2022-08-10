// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navigation_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavigationBarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(int? index) success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BottomNavigationBarStateIdle value) idle,
    required TResult Function(BottomNavigationBarStateSuccess value) success,
    required TResult Function(BottomNavigationBarStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BottomNavigationBarStateIdle value)? idle,
    TResult Function(BottomNavigationBarStateSuccess value)? success,
    TResult Function(BottomNavigationBarStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BottomNavigationBarStateIdle value)? idle,
    TResult Function(BottomNavigationBarStateSuccess value)? success,
    TResult Function(BottomNavigationBarStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationBarStateCopyWith<$Res> {
  factory $BottomNavigationBarStateCopyWith(BottomNavigationBarState value,
          $Res Function(BottomNavigationBarState) then) =
      _$BottomNavigationBarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BottomNavigationBarStateCopyWithImpl<$Res>
    implements $BottomNavigationBarStateCopyWith<$Res> {
  _$BottomNavigationBarStateCopyWithImpl(this._value, this._then);

  final BottomNavigationBarState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationBarState) _then;
}

/// @nodoc
abstract class _$$BottomNavigationBarStateIdleCopyWith<$Res> {
  factory _$$BottomNavigationBarStateIdleCopyWith(
          _$BottomNavigationBarStateIdle value,
          $Res Function(_$BottomNavigationBarStateIdle) then) =
      __$$BottomNavigationBarStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BottomNavigationBarStateIdleCopyWithImpl<$Res>
    extends _$BottomNavigationBarStateCopyWithImpl<$Res>
    implements _$$BottomNavigationBarStateIdleCopyWith<$Res> {
  __$$BottomNavigationBarStateIdleCopyWithImpl(
      _$BottomNavigationBarStateIdle _value,
      $Res Function(_$BottomNavigationBarStateIdle) _then)
      : super(_value, (v) => _then(v as _$BottomNavigationBarStateIdle));

  @override
  _$BottomNavigationBarStateIdle get _value =>
      super._value as _$BottomNavigationBarStateIdle;
}

/// @nodoc

class _$BottomNavigationBarStateIdle implements BottomNavigationBarStateIdle {
  const _$BottomNavigationBarStateIdle();

  @override
  String toString() {
    return 'BottomNavigationBarState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationBarStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(int? index) success,
    required TResult Function(String message) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function(String message)? failed,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
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
    required TResult Function(BottomNavigationBarStateIdle value) idle,
    required TResult Function(BottomNavigationBarStateSuccess value) success,
    required TResult Function(BottomNavigationBarStateFailed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BottomNavigationBarStateIdle value)? idle,
    TResult Function(BottomNavigationBarStateSuccess value)? success,
    TResult Function(BottomNavigationBarStateFailed value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BottomNavigationBarStateIdle value)? idle,
    TResult Function(BottomNavigationBarStateSuccess value)? success,
    TResult Function(BottomNavigationBarStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class BottomNavigationBarStateIdle
    implements BottomNavigationBarState {
  const factory BottomNavigationBarStateIdle() = _$BottomNavigationBarStateIdle;
}

/// @nodoc
abstract class _$$BottomNavigationBarStateSuccessCopyWith<$Res> {
  factory _$$BottomNavigationBarStateSuccessCopyWith(
          _$BottomNavigationBarStateSuccess value,
          $Res Function(_$BottomNavigationBarStateSuccess) then) =
      __$$BottomNavigationBarStateSuccessCopyWithImpl<$Res>;
  $Res call({int? index});
}

/// @nodoc
class __$$BottomNavigationBarStateSuccessCopyWithImpl<$Res>
    extends _$BottomNavigationBarStateCopyWithImpl<$Res>
    implements _$$BottomNavigationBarStateSuccessCopyWith<$Res> {
  __$$BottomNavigationBarStateSuccessCopyWithImpl(
      _$BottomNavigationBarStateSuccess _value,
      $Res Function(_$BottomNavigationBarStateSuccess) _then)
      : super(_value, (v) => _then(v as _$BottomNavigationBarStateSuccess));

  @override
  _$BottomNavigationBarStateSuccess get _value =>
      super._value as _$BottomNavigationBarStateSuccess;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$BottomNavigationBarStateSuccess(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BottomNavigationBarStateSuccess
    implements BottomNavigationBarStateSuccess {
  const _$BottomNavigationBarStateSuccess({this.index});

  @override
  final int? index;

  @override
  String toString() {
    return 'BottomNavigationBarState.success(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationBarStateSuccess &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$BottomNavigationBarStateSuccessCopyWith<_$BottomNavigationBarStateSuccess>
      get copyWith => __$$BottomNavigationBarStateSuccessCopyWithImpl<
          _$BottomNavigationBarStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(int? index) success,
    required TResult Function(String message) failed,
  }) {
    return success(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function(String message)? failed,
  }) {
    return success?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
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
    required TResult Function(BottomNavigationBarStateIdle value) idle,
    required TResult Function(BottomNavigationBarStateSuccess value) success,
    required TResult Function(BottomNavigationBarStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BottomNavigationBarStateIdle value)? idle,
    TResult Function(BottomNavigationBarStateSuccess value)? success,
    TResult Function(BottomNavigationBarStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BottomNavigationBarStateIdle value)? idle,
    TResult Function(BottomNavigationBarStateSuccess value)? success,
    TResult Function(BottomNavigationBarStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BottomNavigationBarStateSuccess
    implements BottomNavigationBarState {
  const factory BottomNavigationBarStateSuccess({final int? index}) =
      _$BottomNavigationBarStateSuccess;

  int? get index;
  @JsonKey(ignore: true)
  _$$BottomNavigationBarStateSuccessCopyWith<_$BottomNavigationBarStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BottomNavigationBarStateFailedCopyWith<$Res> {
  factory _$$BottomNavigationBarStateFailedCopyWith(
          _$BottomNavigationBarStateFailed value,
          $Res Function(_$BottomNavigationBarStateFailed) then) =
      __$$BottomNavigationBarStateFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$BottomNavigationBarStateFailedCopyWithImpl<$Res>
    extends _$BottomNavigationBarStateCopyWithImpl<$Res>
    implements _$$BottomNavigationBarStateFailedCopyWith<$Res> {
  __$$BottomNavigationBarStateFailedCopyWithImpl(
      _$BottomNavigationBarStateFailed _value,
      $Res Function(_$BottomNavigationBarStateFailed) _then)
      : super(_value, (v) => _then(v as _$BottomNavigationBarStateFailed));

  @override
  _$BottomNavigationBarStateFailed get _value =>
      super._value as _$BottomNavigationBarStateFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BottomNavigationBarStateFailed(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BottomNavigationBarStateFailed
    implements BottomNavigationBarStateFailed {
  const _$BottomNavigationBarStateFailed(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BottomNavigationBarState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationBarStateFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$BottomNavigationBarStateFailedCopyWith<_$BottomNavigationBarStateFailed>
      get copyWith => __$$BottomNavigationBarStateFailedCopyWithImpl<
          _$BottomNavigationBarStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(int? index) success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
    TResult Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(int? index)? success,
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
    required TResult Function(BottomNavigationBarStateIdle value) idle,
    required TResult Function(BottomNavigationBarStateSuccess value) success,
    required TResult Function(BottomNavigationBarStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BottomNavigationBarStateIdle value)? idle,
    TResult Function(BottomNavigationBarStateSuccess value)? success,
    TResult Function(BottomNavigationBarStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BottomNavigationBarStateIdle value)? idle,
    TResult Function(BottomNavigationBarStateSuccess value)? success,
    TResult Function(BottomNavigationBarStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class BottomNavigationBarStateFailed
    implements BottomNavigationBarState {
  const factory BottomNavigationBarStateFailed(final String message) =
      _$BottomNavigationBarStateFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$BottomNavigationBarStateFailedCopyWith<_$BottomNavigationBarStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}
