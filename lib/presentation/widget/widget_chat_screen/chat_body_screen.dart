

import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_chat_screen/build_chat_item.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';

import 'build_story_item_chat.dart';

class ChatBodyScreen extends StatelessWidget {
   ChatBodyScreen({super.key});
var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children:
          [
            DefaultFormField(
              prefix: Icons.search,
              controller: searchController,
              type: TextInputType.text,
              validator: (value)
              {
                return null;
              },
              hintText: 'search',
              obscure: false,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.02,),
            SizedBox(
              height: 110,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context ,index)=>const BuildStoryItemChat(),
                separatorBuilder: (context,index) => const SizedBox(
                  width: 10,
                ),
                itemCount: 20,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics:const  NeverScrollableScrollPhysics(),
              itemBuilder: (context ,index)=>const BuildChatItem(),
              separatorBuilder: (context ,index)=>const SizedBox(
                height: 10.0,
              ),
              itemCount:20,
            ),

          ],
        ),
      ),
    );
  }
}




