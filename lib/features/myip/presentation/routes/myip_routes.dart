import 'package:flutter/material.dart';
import 'package:simple/core/config/routes/app_routes.dart';
import 'package:simple/features/myip/presentation/pages/myip_page.dart';


class MyIpRoutes {
  static const String resultRoute = '/myip';

  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case resultRoute:
        return AppRoutes.materialRoute(const MyIpPage());
      default:
        return null;
    }
  }
}