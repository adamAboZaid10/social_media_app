import 'package:flutter/material.dart';

class CustomButtonRegisterWidget extends StatelessWidget {
  CustomButtonRegisterWidget({
    super.key,
    required this.onPressed,
    required this.color,
    required this.text,
    this.width
  });

  GestureTapCallback onPressed;
  Color color;
  String text;
  double? width =double.infinity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: MaterialButton(
        color: color,
        onPressed: onPressed,
        child:  Text(text),),
    );
  }
}