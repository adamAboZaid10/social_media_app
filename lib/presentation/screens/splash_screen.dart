import 'package:flutter/material.dart';

import '../widget/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SplashScreenBody(),
    );
  }
}


