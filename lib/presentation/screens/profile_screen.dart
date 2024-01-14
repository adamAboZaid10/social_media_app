import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: const ProfileScreenBody(),
    );
  }
}
