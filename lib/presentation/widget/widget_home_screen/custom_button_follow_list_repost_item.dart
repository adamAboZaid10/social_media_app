import 'package:flutter/material.dart';

class CustomButtonFollowListRepostItem extends StatelessWidget {
  CustomButtonFollowListRepostItem({super.key,required this.textFollow});
  String textFollow;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 80,
      child: MaterialButton(
        onPressed: (){},
        color: Colors.grey.shade300,
        child:  Text(textFollow,style:const  TextStyle(color: Colors.grey),),
      ),
    );
  }
}

