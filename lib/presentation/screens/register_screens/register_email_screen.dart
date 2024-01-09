import 'package:flutter/material.dart';

import '../../widget/widget_register_screen/register_email_screen_body.dart';

class RegisterEmailScreen extends StatelessWidget {
  const RegisterEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:RegisterEmailScreenBody() ,
    );
  }
}

