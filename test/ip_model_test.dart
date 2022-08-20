import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:simple/features/myip/data/remote/model/ip_model.dart';
import 'package:simple/features/myip/domain/entity/ip_entity.dart';


import 'fixtures/fixture_reader.dart';

void main() {
  final tIpModel =
      IpModel(ip: "160.20.152.46", country: "Netherlands", cc: "NL");

  group('IpModel test', () {

    test(
      'should be a subclass of IpEntity',
          () async {
        expect(tIpModel, isA<IpEntity>());
      },
    );

    test(
      'should return a valid model',
      () async {
        final Map<String, dynamic> jsonMap = json.decode(fixture('myip.json'));

        final result = IpModel.fromJson(jsonMap);

        expect(result, tIpModel);
      },
    );

    test(
      'should return a valid map',
        ()async {
          final result = tIpModel.toJson();

          final mapExpect = {
            "ip": "160.20.152.46",
            "country": "Netherlands",
            "cc": "NL",
          };
          expect(result, mapExpect);
        }
    );
  });
}
