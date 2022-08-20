import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/widget/base_stateless_widget.dart';
import 'package:simple/features/myip/presentation/widget/myip_with_bloc_widget.dart';
import 'package:simple/features/myip/presentation/widget/myip_with_provider_widget.dart';

class MyIpWidget extends BaseStatelessWidget {
  const MyIpWidget({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Column(
      children: const [
        Expanded(child: MyIpWithBlocWidget()),
        Expanded(child: MyIpWithProviderWidget()),
      ],
    );
  }
}
