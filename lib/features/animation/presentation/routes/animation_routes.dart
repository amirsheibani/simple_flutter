
import 'package:flutter/material.dart';
import 'package:simple/core/config/routes/app_routes.dart';
import 'package:simple/features/animation/presentation/pages/animation_page.dart';


class AnimationRoutes {
  static const String animationRoute = '/animation_page';

  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case animationRoute:
        return AppRoutes.materialRoute(const AnimationPage());
      default:
        return null;
    }
  }
}