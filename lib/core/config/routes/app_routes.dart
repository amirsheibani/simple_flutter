import 'package:flutter/material.dart';
import 'package:simple/features/home/presentation/routes/home_routes.dart';
import 'package:simple/features/main/routes/main_routes.dart';
import 'package:simple/features/setting/routes/setting_routes.dart';


class AppRoutes {
  static String getParentRoute(String route) {
    if (route == '/') {
      return route;
    } else {
      final items = route.split('/');
      return items[0] == '/' ? items[0] : items[1];
    }
  }

  static Route? onGenerateRoutes(RouteSettings settings) {
    String section = getParentRoute(settings.name ?? '/');

    switch (section) {
      case '/':
        return MainRoutes.onGenerateRoutes(settings);
      case 'setting_page':
        return SettingRoutes.onGenerateRoutes(settings);
      case 'home_page':
        return HomeRoutes.onGenerateRoutes(settings);

      default:
        return null;
    }
  }

  static Route<dynamic> materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}