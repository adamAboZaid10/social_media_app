
import 'package:flutter/material.dart';

class CustomTextButtonFeatureSearch extends StatelessWidget {
  CustomTextButtonFeatureSearch({super.key,required this.onPressed,required this.text});
  GestureTapCallback onPressed;
  String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
          onPressed:onPressed,
          child:  Text(
            text,
            style: TextStyle(color: Theme.of(context).iconTheme.color),)),
    )
    ;
  }
}


