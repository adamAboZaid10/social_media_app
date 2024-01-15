import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_profile_screen/create_new_post_screen_body.dart';

class CreateNewPostScreen extends StatelessWidget {
  const CreateNewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Create post',style: Theme.of(context).textTheme.bodyText1,),
        actions:
        [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButtonRegisterWidget(
                onPressed: (){},
                color: Colors.grey,
                text: 'Post'),
          ),
        ],
      ),
      body:  CreateNewPostScreenBody(),
    );
  }
}
