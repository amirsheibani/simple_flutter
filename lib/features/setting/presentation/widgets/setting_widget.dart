import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/widget/base_stateless_widget.dart';
import 'package:simple/features/setting/presentation/widgets/setting_component/common.dart';

class SettingWidget extends BaseStatelessWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const [
          SettingCommonSection(),
        ],
      ),
    );
  }
}
