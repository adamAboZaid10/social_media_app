import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_settings_screen/account_settings_screen_body.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:AccountSettingScreenBody(),
    );
  }
}
