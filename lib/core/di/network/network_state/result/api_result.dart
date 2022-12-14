import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple/core/di/network/network_state/error/network_exceptions.dart';


part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(
      {required T data}) = Success<T>;

  const factory ApiResult.failure(
      {required NetworkExceptions error, String? message}) = Failure<T>;
}