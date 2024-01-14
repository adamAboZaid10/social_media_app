
import 'package:flutter/material.dart';

import '../../../core/styles/color_theme.dart';

class CustomFollowerAndConnectsDrawer extends StatelessWidget {
  const CustomFollowerAndConnectsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Row(
      children:
      [
        Text('Follower ',style: TextStyle(color: Colors.white,),),
        Text('(128)',style: TextStyle(color: defaultGoldColor,),),
        Spacer(),
        Text('Contacts ',style: TextStyle(color: Colors.white,),),
        Text('(48) ',style: TextStyle(color:defaultGoldColor,),)
      ],
    );
  }
}

