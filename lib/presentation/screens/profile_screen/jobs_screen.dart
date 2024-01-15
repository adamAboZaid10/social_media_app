import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_profile_screen/jobs_screen_body.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Jobs'),),
      body: const JobsScreenBody(),
    );
  }
}
