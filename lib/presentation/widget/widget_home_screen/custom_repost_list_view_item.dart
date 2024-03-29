
import 'package:flutter/material.dart';
import '../../../core/styles/color_theme.dart';
import '../../../core/utils/assets_data.dart';
import '../choose_profile_image.dart';
import 'custom_button_follow_list_repost_item.dart';
import 'custom_like_comment_list_reposted_item.dart';
import 'custom_name_username_list_item.dart';
import 'custom_time_date_repost_list_item.dart';

class CustomRepostedListViewItem extends StatelessWidget {
  const CustomRepostedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*.84,
      decoration:  const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft:Radius.circular(15),
              topRight: Radius.circular(15)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                defaultFirstGradientColor,
                defaultDrawerColor
              ]
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Image.asset(
              AssetsData.defaultImage,
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width*.8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:
              [
                 ChooseProfileImageOrDefaultImage(
                   width:MediaQuery.of(context).size.width*.15,
                   height:MediaQuery.of(context).size.height*.15 ,
                 ),
                SizedBox(height: MediaQuery.of(context).size.height*.02,),
                const CustomNameAndUserNameRepostedListItem(),
                 CustomButtonFollowListRepostItem(textFollow:  'following you',),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz))
              ],
            ),
             Padding(padding: EdgeInsets.symmetric(
                 vertical:  MediaQuery.of(context).size.height*.03,
                 horizontal: 8
             ),
              child: const Text(
                'Welcome everyone ! Can you help me with a specific matter in Figma?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const  CustomLikeAndCommentListRepostItem(),
            const CustomTimeAndDateRepostListItem(),
          ],
        ),
      ),
    );
  }
}



