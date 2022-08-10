import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:simple/features/home/presentation/manager/test_provider/increment_state.dart';

@injectable
class IncrementProvider extends ChangeNotifier{
  IncrementState _useState = const IncrementState.idle();

  IncrementState get state => _useState;


  int _index = 0;

  set useState(IncrementState value) {
    _useState = value;
    notifyListeners();
  }

  void changeIndex() {
    useState = const IncrementState.loading();

    Future.delayed(const Duration(seconds: 3), () {
      useState = IncrementState.success(index: _index++);
    });
  }
}