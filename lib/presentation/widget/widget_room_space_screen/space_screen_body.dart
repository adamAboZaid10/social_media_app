import 'package:flutter/material.dart';
import 'custom_list_view_room_space.dart';

class SpaceScreenBody extends StatelessWidget {
  const SpaceScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
      child: SingleChildScrollView(
        child: Column(
          children:
          [
            Text(
              'Discover new Communities',
              style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.03 ,),
         const  CustomListViewRoomSpace(),
          ],
        ),
      ),
    );
  }
}


