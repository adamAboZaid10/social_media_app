
import 'package:flutter/material.dart';

import '../../../core/styles/color_theme.dart';

class CustomFollowerAndConnectsDrawer extends StatelessWidget {
   CustomFollowerAndConnectsDrawer({super.key,required this.followerTap,required this.contactsTap});
   GestureTapCallback followerTap ;
   GestureTapCallback contactsTap ;

  @override
  Widget build(BuildContext context) {
    return   Row(mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        InkWell(
          onTap:followerTap ,
          child: const Row(
            children: [
               Text('Follower ',style: TextStyle(color: Colors.white,),),
               Text('(128)',style: TextStyle(color: defaultGoldColor,),),
            ],
          ),
        ),

        SizedBox(width: MediaQuery.of(context).size.width*.03,),
        InkWell(
          onTap: contactsTap,
          child: const Row(
            children: [
               Text('Contacts ',style: TextStyle(color: Colors.white,),),
               Text('(48) ',style: TextStyle(color:defaultGoldColor,),),
            ],
          ),
        )
      ],
    );
  }
}



