import 'package:flutter/material.dart';

import '../../widget/widget_register_screen/register_username_screen_body.dart';

class RegisterUserNameScreen extends StatelessWidget {
  const RegisterUserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:RegisterUserNameScreenBody() ,
    );
  }
}