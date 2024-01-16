import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_settings_screen/settings_screen_body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: SettingsScreenBody(),
    );
  }
}
