
import 'package:flutter/material.dart';

import '../../../core/styles/color_theme.dart';

class CustomLikeAndCommentListRepostItem extends StatelessWidget {
  const CustomLikeAndCommentListRepostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        CustomIconButtonLike(
            color: Colors.red,
            icon: Icons.favorite_border, onPressed: (){}),
        CustomIconButtonLike(
            color: defaultGoldColor,
            icon: Icons.messenger_outline, onPressed: (){}),
        CustomIconButtonLike(
            color: defaultGoldColor,
            icon: Icons.celebration, onPressed: (){}),
        const Spacer(),
        CustomIconButtonLike(
            color: defaultGoldColor,
            icon: Icons.ios_share, onPressed: (){}),
      ],
    );
  }
}

class CustomIconButtonLike extends StatelessWidget {
   CustomIconButtonLike({super.key,required this.color,required this.icon,required this.onPressed});
  GestureTapCallback onPressed;
  IconData icon;
  Color color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon:  Icon(
          icon,
          color: color,)
    );
  }
}


