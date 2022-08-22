

import 'package:annotations/generate_model_annotations.dart';

part '../../data/remote/model/ip_entity.g.dart';

@generateModelMapper
@generateModelClass
class IpEntity {
  final String? ip;
  final String? country;
  final String? cc;

  IpEntity({this.ip, this.country, this.cc });

}