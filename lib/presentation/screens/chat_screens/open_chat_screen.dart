import 'package:flutter/material.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/presentation/widget/widget_chat_screen/open_screen_body.dart';
import 'package:social_media_app/presentation/widget/widget_home_screen/custom_like_comment_list_reposted_item.dart';

class OpenChatScreen extends StatelessWidget {
  const OpenChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Row(
          children:
          [
            const Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1615744455875-7ad33653e8c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    radius: 6.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.width*.05,),
            Expanded(child: Text('Adam mo',overflow:TextOverflow.ellipsis,maxLines:1,style:Theme.of(context).textTheme.bodyText1,))
          ],
        ),
        actions:
        [
          CustomIconButtonLike(color: defaultGoldColor, icon: Icons.phone_enabled,
              onPressed: (){}),
          CustomIconButtonLike(color: defaultGoldColor, icon: Icons.video_call,
              onPressed: (){}),
        ],
      ),
      body:  OpenChatScreenBody(),
    );
  }
}
