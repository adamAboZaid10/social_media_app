import 'package:flutter/material.dart';

import '../../widget/widget_room_space_screen/space_screen_body.dart';

class SpaceScreen extends StatelessWidget {
  const SpaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          'Room Space',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body:const  SpaceScreenBody(),
    );
  }
}
