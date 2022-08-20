import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/page/base_stateless_page.dart';
import 'package:simple/features/myip/presentation/widget/my_ip_widget.dart';


class MyIpPage extends BaseStatelessPage {
  const MyIpPage({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return const MyIpWidget();
  }
}
