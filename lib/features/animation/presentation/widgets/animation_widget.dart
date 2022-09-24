import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/widget/base_stateless_widget.dart';

class AnimationWidget extends BaseStatelessWidget {
  const AnimationWidget({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Container(
        width: 120,
        height: 120,
        color: Colors.redAccent,
      ),
    );
  }
}