
import 'package:flutter/material.dart';
import 'package:simple/core/config/routes/app_routes.dart';
import 'package:simple/features/home/presentation/pages/home_page.dart';
import 'package:simple/features/main/presentation/pages/main.dart';
import 'package:simple/features/setting/presentation/pages/setting_page.dart';


class HomeRoutes {
  static const String mainRoute = '/home_page';

  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case mainRoute:
        return AppRoutes.materialRoute(const HomePage());
      default:
        return null;
    }
  }
}