import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/page/base_stateless_page.dart';
import 'package:simple/features/animation/presentation/widgets/animation_widget.dart';

class AnimationPage extends BaseStatelessPage {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return const AnimationWidget();
  }
}
