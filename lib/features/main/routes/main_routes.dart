
import 'package:flutter/material.dart';
import 'package:simple/core/config/routes/app_routes.dart';
import 'package:simple/features/main/presentation/pages/main.dart';


class MainRoutes {
  static const String mainRoute = '/';

  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case mainRoute:
        return AppRoutes.materialRoute(const MainPage());
      default:
        return null;
    }
  }
}