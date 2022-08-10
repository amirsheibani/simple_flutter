import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

mixin BasePageMixin {
  List<Widget> appBarActions() {
    return [const SizedBox()];
  }

  List<dynamic> setProviders(BuildContext context) {
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
            ? MultiProvider(
                providers: [...setProviders(context)],
                child: Builder(
                  builder: (context) {
                    return _buildScaffold(context);
                  },
                ),
              )
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
      bottomNavigationBar:bottomNavigationBar(context),
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
