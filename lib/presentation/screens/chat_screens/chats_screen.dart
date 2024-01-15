import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/choose_profile_image.dart';
import 'package:social_media_app/presentation/widget/widget_chat_screen/chat_body_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Chats',style: Theme.of(context).textTheme.bodyText1,),
        actions: [
           Padding(
            padding:  const EdgeInsets.all(8.0),
            child: ChooseProfileImageOrDefaultImage(),
          )
        ],
      ),
      body:  ChatBodyScreen(),
    );
  }
}
