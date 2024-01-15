import 'package:flutter/material.dart';

import '../../widget/widget_profile_screen/all_follower_screen_body.dart';

class AllFollowersScreen extends StatelessWidget {
  const AllFollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('All Followers'),),
      body: const AllFollowerScreenBody(),
    );
  }
}
