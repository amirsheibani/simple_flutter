
import 'package:flutter/material.dart';
import 'package:simple/core/base/presentation/page/base_page_mixin.dart';

abstract class BaseStatelessPage extends StatelessWidget with BasePageMixin{
  const BaseStatelessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return annotatedRegion(context);
  }
}

