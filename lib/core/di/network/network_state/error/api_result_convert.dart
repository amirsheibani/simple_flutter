

import 'package:simple/core/base/data/model/base_response.dart';
import 'package:simple/core/di/network/network_state/error/network_exceptions.dart';
import 'package:simple/core/di/network/network_state/result/api_result.dart';

extension ErrorApiResultExtension on Object {
  ApiResult<T> toApiResult<T>() {
    final error = NetworkExceptions.getDioException(this);
    final str = NetworkExceptions.getErrorMessage(error);
    return ApiResult.failure(error: error, message: str);
  }
}

extension SuccessApiResultExtension on BaseResponse {
  ApiResult<T> toApiResult<T>() {
    var apiResult =
    ApiResult<T>.success(data: data);
    return apiResult;
  }
}