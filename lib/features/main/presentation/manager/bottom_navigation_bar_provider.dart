import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple/features/main/presentation/manager/bottom_navigation_bar_state.dart';

@injectable
class BottomNavigationBarProvider extends ChangeNotifier{
  BottomNavigationBarState _useState = const BottomNavigationBarState.idle();

  BottomNavigationBarState get state => _useState;


  set useState(BottomNavigationBarState value) {
    _useState = value;
    notifyListeners();
  }

  void changeIndex({int? index}) {
    useState = BottomNavigationBarState.success(index: index);
  }
}