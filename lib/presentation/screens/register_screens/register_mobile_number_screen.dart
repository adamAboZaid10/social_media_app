import 'package:flutter/material.dart';

import '../../widget/widget_register_screen/register_mobile_number_screen_body.dart';

class RegisterMobileNumberScreen extends StatelessWidget {
  const RegisterMobileNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RegisterMobileNumberScreenBody(),
    );
  }
}



