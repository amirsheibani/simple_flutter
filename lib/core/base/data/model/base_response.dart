import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T>{
  T? data;

  BaseResponse({
    this.data,
  });

  factory BaseResponse.fromJson(
      String d, Function(Map<String, dynamic>) create) {
    return BaseResponse<T>(
        data:  create(json.decode(d)) );
  }
}