import 'package:flutter/material.dart';

class CustomButtonRegisterWidget extends StatelessWidget {
  CustomButtonRegisterWidget({
    super.key,
    required this.onPressed,
    required this.color,
    required this.text,
    this.width,
    this.textColor
  });

  GestureTapCallback onPressed;
  Color color;
  Color? textColor;
  String text;
  double? width =double.infinity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: MaterialButton(
        color: color,
        onPressed: onPressed,
        child:  Text(text,style: TextStyle(color: textColor),),),
    );
  }
}