
import 'package:flutter/material.dart';
import 'package:simple/core/config/routes/app_routes.dart';
import 'package:simple/features/main/presentation/pages/main.dart';
import 'package:simple/features/setting/presentation/pages/setting_page.dart';


class SettingRoutes {
  static const String mainRoute = '/setting_page';

  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case mainRoute:
        return AppRoutes.materialRoute(const SettingPage());
      default:
        return null;
    }
  }
}