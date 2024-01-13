part of 'bottom_nav_bar_bloc.dart';

@immutable
abstract class BottomNavBarEvent {}

class TabChangeEvent extends BottomNavBarEvent {

  final int tabIndex;
  TabChangeEvent({required this.tabIndex});
}
