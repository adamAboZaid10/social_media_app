import 'package:flutter/material.dart';

class CustomButtonRegisterWidget extends StatelessWidget {
  CustomButtonRegisterWidget({
    super.key,
    required this.onPressed,
    required this.color,
    required this.text
  });

  GestureTapCallback onPressed;
  Color color;
  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        onPressed: onPressed,
        child:  Text(text),),
    );
  }
}