import 'package:flutter/material.dart';

class OutLineIconButtonWidget extends StatelessWidget {
  OutLineIconButtonWidget({
    super.key,
    required this.onPressed,
    required this.iconData,
    required this.color
  });
  GestureTapCallback onPressed;
  IconData iconData;
  Color color;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        child:  Icon(
          iconData,color: color,
        ));
  }
}

