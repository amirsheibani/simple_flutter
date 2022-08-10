import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BaseWidgetMixin {


  List<dynamic> setProviders(BuildContext context) {
    return [];
  }

  Widget body(BuildContext context) {
    return const SizedBox();
  }

}


