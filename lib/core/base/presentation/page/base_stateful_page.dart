import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/page/base_page_mixin.dart';

abstract class BaseStateFulPage extends StatefulWidget {
  const BaseStateFulPage({Key? key}) : super(key: key);
}

abstract class BaseState<Page extends BaseStateFulPage> extends State<Page> with BasePageMixin{
  @override
  Widget build(BuildContext context) {
    return annotatedRegion(context);
  }
}
