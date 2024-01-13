part of 'bottom_nav_bar_bloc.dart';

@immutable
abstract class BottomNavBarState {
  final int tabIndex;
  const BottomNavBarState({required this.tabIndex});
}

class BottomNavBarInitial extends BottomNavBarState {
  const BottomNavBarInitial({required super.tabIndex});
}
