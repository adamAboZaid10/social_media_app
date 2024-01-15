import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_profile_screen/albums_screen_body.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('your Gallery',style: Theme.of(context).textTheme.bodyText1,),
      ),

      body:const  AlbumsScreenBody(),
    );
  }
}
