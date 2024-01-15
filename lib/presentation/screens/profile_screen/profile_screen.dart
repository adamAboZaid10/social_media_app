import 'package:flutter/material.dart';

import '../../widget/widget_profile_screen/profile_screen_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Profile',style: Theme.of(context).textTheme.bodyText1,),
      ),
      body: const ProfileScreenBody(),
    );
  }
}
