import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/screens/login_screen.dart';
import 'package:social_media_app/presentation/screens/profile_screen/all_followers_screen.dart';
import 'package:social_media_app/presentation/screens/profile_screen/profile_screen.dart';
import 'package:social_media_app/presentation/screens/register_screens/register_screen.dart';
import 'package:social_media_app/presentation/screens/room_space_screens/space_screen.dart';
import '../../../core/styles/color_theme.dart';
import '../choose_profile_image.dart';
import 'custom_feature_drawer_item.dart';
import 'custom_follower_contacts_drawer.dart';

class CustomDrawerHomeScreen extends StatelessWidget {
  const CustomDrawerHomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return   Drawer(
      backgroundColor: defaultDrawerColor,
      width: MediaQuery.of(context).size.width*.7,
      child:  SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.07),
          child: Column(
            children:
            [
               SizedBox(height: MediaQuery.of(context).size.height*.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChooseProfileImageOrDefaultImage(),
                      const Text(
                        'Adam mohamed',
                        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),
                      ),
                      const Text(
                        '@adam',
                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),
                      ),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.info_outline))
                ],
              ),
               SizedBox(height: MediaQuery.of(context).size.height*.05),
               CustomFollowerAndConnectsDrawer(
                 followerTap: () 
                 {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context)=>const AllFollowersScreen())
                   );
                 }, 
                 contactsTap: () {  },),
               SizedBox( height: MediaQuery.of(context).size.height*.05,),
              CustomFeaturesDrawerItem(
                color: Colors.white,
                  iconColor: Colors.white,
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>const ProfileScreen())
                    );
                  },
                  text: 'Profile',
                  iconData: Icons.account_circle_outlined),
              SizedBox( height: MediaQuery.of(context).size.height*.05,),
              CustomFeaturesDrawerItem(
                  iconColor: Colors.white,
                color: Colors.white,
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>const SpaceScreen())
                    );
                  },
                  text: 'Spaces',
                  iconData: Icons.mic),
              SizedBox( height: MediaQuery.of(context).size.height*.05,),
              CustomFeaturesDrawerItem(
                  iconColor: Colors.white,
                color: Colors.white,
                  onTap: (){},
                  text: 'Settings',
                  iconData: Icons.settings),
              SizedBox( height: MediaQuery.of(context).size.height*.05,),
              CustomFeaturesDrawerItem(
                  iconColor: Colors.white,
                color: Colors.white,
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>const LoginScreen())
                    );
                  },
                  text: 'Logout',
                  iconData: Icons.logout),
              SizedBox( height: MediaQuery.of(context).size.height*.05,),
              CustomFeaturesDrawerItem(
                  iconColor: Colors.white,
                onTap: ()
                {
                  Navigator.push(
                      context, 
                    MaterialPageRoute(builder: (context)=>const RegisterScreen())
                  );
                },
                text: 'Delete Account',
                  color: Colors.red,
                iconData: Icons.person_remove),
            ],
          ),
        ),
      ),
    );
  }
}


