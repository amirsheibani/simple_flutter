// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../domain/entity/ip_entity.dart';

// **************************************************************************
// Generator: BuildModelClass
// **************************************************************************

class IpModel extends IpEntity {
  IpModel({
    String? ip,
    String? country,
    String? cc,
  }) : super(
          ip: ip,
          country: country,
          cc: cc,
        );

  factory IpModel.fromJson(Map<String, dynamic> json) {
    return IpModel(
      ip: json['ip'],
      country: json['country'],
      cc: json['cc'],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ip'] = ip;
    map['country'] = country;
    map['cc'] = cc;
    return map;
  }
}

// **************************************************************************
// Generator: BuildModelMapper
// **************************************************************************

extension ConvertToModel on IpEntity {
  IpModel toModel() {
    return IpModel(
      ip: ip,
      country: country,
      cc: cc,
    );
  }
}
