import 'package:flutter/material.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/presentation/widget/widget_chat_screen/build_messsage_from_person.dart';
import 'package:social_media_app/presentation/widget/widget_chat_screen/build_my_message.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';
import 'package:social_media_app/presentation/widget/widget_home_screen/custom_like_comment_list_reposted_item.dart';

class OpenChatScreenBody extends StatelessWidget {
   OpenChatScreenBody({super.key});
   var messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Column(
      
      children: [
        Expanded(
          child: SingleChildScrollView(
              child:  Padding( 
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
                child:  Column(
                  children:
                  [
                    BuildMessageFromPerson(),
                    BuildMyMessage(),BuildMessageFromPerson(),
                    BuildMyMessage(),
                  ],
                ),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: 
          [
            CustomIconButtonLike(color: defaultGoldColor, icon: Icons.apps_sharp, onPressed: (){}),
            CustomIconButtonLike(color: defaultGoldColor, icon: Icons.camera_alt, onPressed: (){}),
            CustomIconButtonLike(color: defaultGoldColor, icon: Icons.image, onPressed: (){}),
            CustomIconButtonLike(color: defaultGoldColor, icon: Icons.mic, onPressed: (){}),
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.width*.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: DefaultFormField(
                  controller: messageController,
                  type: TextInputType.text,
                  validator: (v){
                    return null;
                  },
                suffix: Icons.emoji_emotions,
                  hintText: 'Aa',
                  obscure: false,
              ),
            ),
            CustomIconButtonLike(color: defaultGoldColor, icon: Icons.thumb_up, onPressed: (){}),
          ],
        ),

      ],
    );
  }
}

