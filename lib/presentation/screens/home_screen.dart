import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/core/styles/color_theme.dart';

import '../widget/widget_home_screen/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer:  Drawer(
        backgroundColor: defaultDrawerColor,
      ),
      body:   HomeScreenBody(),
    );
  }
}



