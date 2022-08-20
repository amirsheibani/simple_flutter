import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:simple/core/base/presentation/widget/base_widget_mixin.dart';

mixin BasePageMixin {
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


  List<Widget> appBarActions() {
    return [const SizedBox()];
  }

  List<dynamic> setProviders(BuildContext context) {
    return [];
  }

  List<dynamic> setBlocProviders(BuildContext context) {
    return [];
  }

  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      actions: appBarActions(),
    );
  }

  void onBackButtonTapped(BuildContext context) {
    Navigator.pop(context);
  }

  bool safeArea() {
    return true;
  }

  bool endDrawerEnableOpenDragGesture() {
    return false;
  }

  bool resizeToAvoidBottomInset() {
    return false;
  }

  Widget body(BuildContext context) {
    return const SizedBox();
  }

  Widget annotatedRegion(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        //Status bar color for android
        statusBarColor: Theme.of(context).backgroundColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Material(
        color: Colors.transparent,
        child: setProviders(context).isNotEmpty
            ? setProviders(context).first is ChangeNotifierProvider
                ? MultiProvider(
                    providers: [...setProviders(context)],
                    child: Builder(
                      builder: (context) {
                        return _buildScaffold(context);
                      },
                    ),
                  )
                : setProviders(context).first is BlocProvider ?  MultiBlocProvider(
                    providers: [...setProviders(context)],
                    child: Builder(
                      builder: (context) {
                        return _buildScaffold(context);
                      },
                    ),
                  ) : _buildScaffold(context)
            : _buildScaffold(context),
      ),
    );
  }

  Widget _buildScaffold(BuildContext context) {
    return Scaffold(
      //Status bar color for iOS
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Theme.of(context).backgroundColor,
        child: _checkSafeArea(context),
      ),
      resizeToAvoidBottomInset: resizeToAvoidBottomInset(),
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture(),
      bottomNavigationBar: bottomNavigationBar(context),
      // endDrawer: const EndDrawer(),
    );
  }

  Widget? bottomNavigationBar(BuildContext context) {
    return null;
  }

  Widget _checkSafeArea(BuildContext context) {
    return safeArea()
        ? SafeArea(
            child: body(context),
          )
        : body(context);
  }
}
