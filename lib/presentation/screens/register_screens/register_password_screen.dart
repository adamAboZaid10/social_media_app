import 'package:flutter/material.dart';

import '../../widget/widget_register_screen/register_pass_screen_body.dart';

class RegisterPasswordScreen extends StatelessWidget {
  const RegisterPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: RegisterPasswordScreenBody(),
    );
  }
}

