import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:social_media_app/presentation/screens/chats_screen.dart';
import 'package:social_media_app/presentation/screens/groups_screen.dart';
import 'package:social_media_app/presentation/screens/home_screen.dart';
import 'package:social_media_app/presentation/screens/mic_screen.dart';
import 'package:social_media_app/presentation/screens/notification_screen.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  BottomNavBarBloc() : super(const BottomNavBarInitial(tabIndex: 0)) {



    int currentIndex = 0;

    on<BottomNavBarEvent>((event, emit) {
      if(event is TabChangeEvent)
      {
        emit(BottomNavBarInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
