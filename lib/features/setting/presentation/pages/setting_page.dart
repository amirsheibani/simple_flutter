import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/page/base_stateless_page.dart';
import 'package:simple/features/setting/presentation/widgets/setting_widget.dart';

class SettingPage extends BaseStatelessPage {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return const SettingWidget();
  }
}
