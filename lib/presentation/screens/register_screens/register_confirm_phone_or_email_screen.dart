import 'package:flutter/material.dart';

import '../../widget/widget_register_screen/register_confirm_number_or_email_screen_body.dart';

class RegisterConfirmNumberOrEmailScreen extends StatelessWidget {
  const RegisterConfirmNumberOrEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:RegisterConfirmNumberOrEmailScreenBody(),
    );
  }
}


