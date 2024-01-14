
import 'package:flutter/material.dart';

class CustomFeaturesDrawerItem extends StatelessWidget {
  CustomFeaturesDrawerItem({
    super.key,
    required this.onTap,
    required this.text,
    required this.iconData,
    required this.color,
  });
  IconData iconData;
  String text;
  Color color;
  GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children:
        [
          Icon(iconData),
          const SizedBox(width: 10,),
          Text(text,style:  TextStyle(color: color,fontSize: 17,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
