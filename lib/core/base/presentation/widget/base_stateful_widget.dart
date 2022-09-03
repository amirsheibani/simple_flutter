import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple/core/base/presentation/widget/base_widget_mixin.dart';

abstract class BaseStateFulWidget extends StatefulWidget {
  const BaseStateFulWidget({Key? key}) : super(key: key);
}

abstract class BaseState<Page extends BaseStateFulWidget> extends State<Page> with BaseWidgetMixin{
  @override
  Widget build(BuildContext context) {
    return setProviders(context).isNotEmpty ?
    MultiBlocProvider(
      providers: [...setProviders(context)],
      child: Builder(
        builder: (context) {
          return SizedBox(
            child: body(context),
          );
        },
      ),
    ): SizedBox(
      child: body(context),
    );
  }
}
