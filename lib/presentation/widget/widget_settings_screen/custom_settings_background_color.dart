
import 'package:flutter/material.dart';

import '../../../core/styles/color_theme.dart';

class CustomSettingsScreenBackgroundColor extends StatelessWidget {
  CustomSettingsScreenBackgroundColor({super.key,required this.widget});
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration:const  BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:
            [
              defaultFirstGradientColor,
              defaultDrawerColor,
            ]

        ),
      ),
      child: widget,
    );
  }
}

