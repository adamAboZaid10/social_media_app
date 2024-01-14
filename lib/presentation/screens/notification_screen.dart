import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/notification_screen_body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Text('Notification Screen',style: Theme.of(context).textTheme.bodyText1,),),
      body:const NotificationScreenBody(),
    );
  }
}
