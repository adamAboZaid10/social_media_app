import 'package:flutter/material.dart';

import '../widget/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LoginScreenBody(),
    );
  }
}
