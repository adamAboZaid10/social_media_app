import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_app/presentation/controller/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';

import '../../core/styles/color_theme.dart';
import 'chats_screen.dart';
import 'social_screen.dart';
import 'home_screen.dart';
import 'room_space_screens/space_screen.dart';
import 'notification_screen.dart';


List<Widget> screens =
[
  const HomeScreen(),
  const SocialScreen(),
  const SpaceScreen(),
  const NotificationScreen(),
  const ChatsScreen(),
];

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavBarBloc,BottomNavBarState>(
      listener: (context,state){},
      builder: (context,state)
      {
        return  Scaffold(
          body: screens.elementAt(state.tabIndex),
          bottomNavigationBar: CurvedNavigationBar(

            height: 55,
            color: const Color(0xff333739),
            backgroundColor: defaultGoldColor,

            onTap: (index)
            {
              BlocProvider.of<BottomNavBarBloc>(context).add(TabChangeEvent(tabIndex: index));
            },
            index: state.tabIndex,
            items:
            const [
              Icon(Icons.home,color: defaultGoldColor,),
              Icon(Icons.groups,color: defaultGoldColor,),
              Icon(Icons.mic,color: defaultGoldColor,),
              Icon(Icons.notification_add_outlined,color: defaultGoldColor,),
              Icon(Icons.sms_outlined,color: defaultGoldColor,),
            ],

          ),
        );
      },
    );
  }
}
