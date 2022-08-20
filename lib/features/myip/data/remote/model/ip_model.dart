import 'package:simple/features/myip/domain/entity/ip_entity.dart';

class IpModel extends IpEntity{
  IpModel({
    String? ip,
    String? country,
    String? cc,
  }) : super(ip: ip,cc: cc,country: country);


  factory IpModel.fromJson(Map<String, dynamic> json) {
    return IpModel(
      ip: json['ip'],
      country: json['country'],
      cc: json['cc']
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