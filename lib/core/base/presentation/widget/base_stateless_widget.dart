import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:simple/core/base/presentation/widget/base_widget_mixin.dart';

abstract class BaseStatelessWidget extends StatelessWidget
    with BaseWidgetMixin {
  const BaseStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return setProviders(context).isNotEmpty
        ? setProviders(context).first is ChangeNotifierProvider
            ? MultiProvider(
                providers: [...setProviders(context)],
                child: Builder(
                  builder: (context) {
                    return body(context);
                  },
                ),
              )
            : setProviders(context).first is BlocProvider ?  MultiBlocProvider(
                providers: [...setProviders(context)],
                child: Builder(
                  builder: (context) {
                    return body(context);
                  },
                ),
              ) : body(context)
        : body(context);
  }
}
