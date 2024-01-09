import 'package:flutter/material.dart';

import '../../widget/widget_register_screen/register_birthday_screen_body.dart';

class RegisterBirthDayScreen extends StatelessWidget {
  const RegisterBirthDayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  RegisterBirthDayScreenBody(),
    );
  }
}
