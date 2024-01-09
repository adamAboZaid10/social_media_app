import 'package:flutter/material.dart';

import '../../widget/widget_register_screen/register_confirm_pass_screen_body.dart';

class RegisterConfirmPasswordScreen extends StatelessWidget {
  const RegisterConfirmPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar() ,
      body: RegisterConfirmPassScreenBody(),
    );
  }
}

