
import 'package:flutter/material.dart';

class CustomTimeAndDateRepostListItem extends StatelessWidget {
  const CustomTimeAndDateRepostListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:
      [
        Text('11:18 AM . ',style: TextStyle(color: Colors.grey.shade500),),
        Text('June 20, 2021',style: TextStyle(color: Colors.grey.shade500),),
      ],
    );
  }
}


