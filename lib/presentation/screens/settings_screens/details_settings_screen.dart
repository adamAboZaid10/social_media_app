import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_settings_screen/details_settings_screen_body.dart';

class DetailsSettingsScreen extends StatelessWidget {
  const DetailsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: DetailsSettingsScreenBody(),
    );
  }
}
