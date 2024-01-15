import 'package:flutter/material.dart';

import '../../../core/styles/color_theme.dart';
import '../widget_home_screen/custom_feature_drawer_item.dart';
import '../widget_home_screen/custom_like_comment_list_reposted_item.dart';

class CustomBioProfileScreen extends StatelessWidget {
  const CustomBioProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: defaultDrawerColor,
      width: double.infinity,
      height: MediaQuery.of(context).size.height*.43,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Text('Bio',style: Theme.of(context).textTheme.bodyText1,),
                CustomIconButtonLike(
                    color: Colors.white, icon: Icons.edit,
                    onPressed: (){

                    }),
              ],
            ),
            CustomFeaturesDrawerItem(
              onTap: (){},
              text: 'Flutter Developer at Cyber Royale',
              iconData: Icons.business_center_outlined,
              iconColor: defaultGoldColor,
              color: Colors.white,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.02,),
            CustomFeaturesDrawerItem(
              onTap: (){},
              text: 'Studied mobile app at ITI-information technology institute ',
              iconData: Icons.school_outlined,
              iconColor: defaultGoldColor,
              color: Colors.white,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.02,),
            CustomFeaturesDrawerItem(
              onTap: (){},
              text: 'Trainee Mobile developer at Cyber royale',
              iconData: Icons.school_outlined,
              iconColor: defaultGoldColor,
              color: Colors.white,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.02,),
            CustomFeaturesDrawerItem(
              onTap: (){},
              text: 'From Egypt',
              iconData: Icons.location_on_outlined,
              iconColor: defaultGoldColor,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

