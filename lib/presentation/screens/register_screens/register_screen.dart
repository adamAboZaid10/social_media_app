import 'package:flutter/material.dart';

import '../../widget/widget_register_screen/register_screen_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  RegisterScreenBody(),
    );
  }
}


