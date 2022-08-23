import 'package:annotations/generate_model_annotations.dart';

@GenerateModelClass(className:'IpModel')
@GenerateMapper(model: true,entity: true)
class IpEntity {
  final String? ip;
  final String? country;
  final String? cc;

  IpEntity({this.ip, this.country, this.cc });

}