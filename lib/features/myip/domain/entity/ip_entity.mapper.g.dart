// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: BuildMapper
// **************************************************************************

import 'package:simple/features/myip/domain/entity/ip_entity.dart';
import 'package:simple/features/myip/data/remote/model/ip_entity.model.g.dart';

extension MapperOnIpModel on IpModel {
  IpEntity? mapper() {
    return IpEntity(
      ip: ip,
      country: country,
      cc: cc,
    );
  }
}

extension MapperOnIpEntity on IpEntity {
  IpModel? mapper() {
    return IpModel(
      ip: ip,
      country: country,
      cc: cc,
    );
  }
}
