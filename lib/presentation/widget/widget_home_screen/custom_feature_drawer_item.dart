
import 'package:flutter/material.dart';

class CustomFeaturesDrawerItem extends StatelessWidget {
  CustomFeaturesDrawerItem({
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Icon(iconData,color: iconColor,),
          const SizedBox(width: 10,),
          Expanded(child: Text(text,style:  TextStyle(color: color,fontSize: 17,fontWeight: FontWeight.w600),))
        ],
      ),
    );
  }
}
