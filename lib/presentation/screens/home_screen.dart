import 'package:flutter/material.dart';
import '../widget/widget_home_screen/custom_drawer_home.dart';
import '../widget/widget_home_screen/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawerHomeScreen(),
      body:   HomeScreenBody(),
    );
  }
}


