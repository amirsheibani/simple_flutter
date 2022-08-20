import 'package:dio/dio.dart';

class DioTokenInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    //TODO set token
    handler.next(options);
  }

// @override
// Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
//   if (err.response?.statusCode == 401) {return handler.next(err);}
//   return handler.next(err);
// }
}