import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_social_screen/social_screen_body.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SocialScreenBody(),
    );
  }
}
