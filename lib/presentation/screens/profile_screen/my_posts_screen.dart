import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_profile_screen/my_posts_screen_body.dart';

class MyPostsScreen extends StatelessWidget {
  const MyPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: const MyPostsScreenBody(),
    );
  }
}
