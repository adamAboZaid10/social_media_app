
import 'package:flutter/material.dart';

import '../../../core/styles/color_theme.dart';

class CustomSettingsScreenItem extends StatelessWidget {
  CustomSettingsScreenItem({
    super.key,
    required this.onTap,
    required this.text,
    required this.iconData,
    required this.color,
    required this.iconColor,
  });
  IconData iconData;
  String text;
  Color color;
  Color iconColor;
  GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: defaultDrawerColor,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [

              const SizedBox(width: 10,),
              Expanded(child: Text(text,style:  TextStyle(color: color,fontSize: 17,fontWeight: FontWeight.w600),)),
              Icon(iconData,color: iconColor,),
            ],
          ),
        ),
      ),
    );
  }
}

