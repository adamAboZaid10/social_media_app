import 'package:flutter/material.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/core/utils/assets_data.dart';
import 'package:social_media_app/presentation/screens/profile_screen/create_new_post_screen.dart';
import 'package:social_media_app/presentation/screens/profile_screen/jobs_screen.dart';
import 'package:social_media_app/presentation/screens/profile_screen/my_posts_screen.dart';
import 'package:social_media_app/presentation/widget/choose_profile_image.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_home_screen/custom_follower_contacts_drawer.dart';
import 'package:social_media_app/presentation/widget/widget_home_screen/custom_reposted_list_view.dart';

import '../../screens/profile_screen/all_followers_screen.dart';
import 'custom_bio_profile_screen.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:
          [
            Stack(
              alignment: Alignment.bottomCenter,
              children:
              [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*.3,
                    child: Image.asset(
                        AssetsData.defaultCoverProfileImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                 CircleAvatar(
                  radius: 30,
                  child:   ChooseProfileImageOrDefaultImage() ,
                )

              ],
            ),
            Text('Adam Mohamed',style: Theme.of(context).textTheme.bodyText1,),
            Text('Software Engineer',style: Theme.of(context).textTheme.bodyText1!
                  .copyWith(fontWeight: FontWeight.w400,fontSize: 17,color: Colors.grey),),
            SizedBox(height: MediaQuery.of(context).size.height*.04,),
             CustomFollowerAndConnectsDrawer(
              followerTap: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const AllFollowersScreen())
                );
              },
              contactsTap: () {  },),
            SizedBox(height: MediaQuery.of(context).size.height*.03,),
            const CustomBioProfileScreen(),
            SizedBox(height: MediaQuery.of(context).size.height*.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Text('Activities',style: Theme.of(context).textTheme.bodyText1),

                CustomButtonRegisterWidget(
                    onPressed: ()
                    {

                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>const CreateNewPostScreen())
                      );
                    },
                    color: defaultGoldColor,
                    text: 'Create Post'
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:MaterialStateColor.resolveWith((states) => defaultFirstGradientColor),
                  ),
                    onPressed: ()
                    {
                      Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context)=>const MyPostsScreen())
                      );
                    },
                    child: Text('my posts',style: Theme.of(context).textTheme.bodyText1 ,)),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:MaterialStateColor.resolveWith((states) => Colors.transparent),
                  ),
                    onPressed: ()
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>const JobsScreen())
                      );
                    },
                    child: Text('Jobs',style: Theme.of(context).textTheme.bodyText1 ,)),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.03,),
            const CustomRepostListView(),
          ],
        ),
      ),
    );
  }
}


