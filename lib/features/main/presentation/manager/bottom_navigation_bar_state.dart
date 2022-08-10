import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_bar_state.freezed.dart';

@freezed
abstract class BottomNavigationBarState with _$BottomNavigationBarState{
  const factory BottomNavigationBarState.idle() = BottomNavigationBarStateIdle;
  const factory BottomNavigationBarState.success(
      {int? index}) = BottomNavigationBarStateSuccess;
  const factory BottomNavigationBarState.failed(String message) = BottomNavigationBarStateFailed;
}