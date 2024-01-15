import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:social_media_app/presentation/screens/chat_screens/chats_screen.dart';
import 'package:social_media_app/presentation/screens/social_screen.dart';
import 'package:social_media_app/presentation/screens/home_screen.dart';
import 'package:social_media_app/presentation/screens/room_space_screens/space_screen.dart';
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
