class IpEntity {
  final String? ip;
  final String? country;
  final String? cc;

  IpEntity({this.ip, this.country, this.cc});

  @override
  bool operator ==(Object other) => (other is IpEntity && other.ip == ip && other.country == country && other.cc == cc);
}