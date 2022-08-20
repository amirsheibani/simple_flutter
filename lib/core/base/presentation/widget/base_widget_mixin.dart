import 'package:flutter/material.dart';

enum SnackBarType{error,warning,normal}
mixin BaseWidgetMixin {

  void showSnackBarMessage(BuildContext context,{String message = '',SnackBarType snackBarType = SnackBarType.normal,SnackBarAction? action}){
    final SnackBar snackBar ;
    switch(snackBarType){
      case SnackBarType.error:
        snackBar = SnackBar(
          content: Text(message),
          backgroundColor: Colors.redAccent,
          action: action,
        );
        break;
      case SnackBarType.warning:
        snackBar = SnackBar(
          content: Text(message),
          backgroundColor: Colors.orangeAccent,
          action: action,
        );
        break;
      case SnackBarType.normal:
        snackBar = SnackBar(
          content: Text(message),
          backgroundColor: Colors.blueAccent,
          action: action,
        );
        break;
    }
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  List<dynamic> setProviders(BuildContext context) {
    return [];
  }

  Widget body(BuildContext context) {
    return const SizedBox();
  }

}


