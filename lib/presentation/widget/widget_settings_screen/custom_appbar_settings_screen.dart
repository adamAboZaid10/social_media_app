
import 'package:flutter/material.dart';

class AppbarSettingsScreen extends StatelessWidget {
  const AppbarSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        Text("Settings",style:Theme.of(context).textTheme.bodyText1),
       const  SizedBox(width: 40,),
        const  CloseButton(
          color: Colors.white,
        ),
      ],
    );
  }
}

