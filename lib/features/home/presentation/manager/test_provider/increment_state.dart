import 'package:freezed_annotation/freezed_annotation.dart';

part 'increment_state.freezed.dart';

@freezed
abstract class IncrementState with _$IncrementState {
  const factory IncrementState.idle() = IncrementStateIdle;

  const factory IncrementState.success({int? index}) = IncrementStateSuccess;

  const factory IncrementState.loading() = IncrementStateLoading;

  const factory IncrementState.failed(String message) = IncrementStateFailed;
}
