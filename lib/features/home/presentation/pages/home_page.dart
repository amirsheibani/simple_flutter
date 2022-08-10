import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/page/base_stateless_page.dart';
import 'package:simple/features/home/presentation/widgets/home_widget.dart';

class HomePage extends BaseStatelessPage {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return const HomeWidget();
  }
}
