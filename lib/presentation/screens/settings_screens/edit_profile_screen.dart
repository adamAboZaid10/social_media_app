import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_settings_screen/edit_profile_screen_settings.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditProfileScreenSettings(),
    );
  }
}
