

import 'package:flutter/material.dart';

import '../../../core/styles/color_theme.dart';

class CustomNameAndUserNameRepostedListItem extends StatelessWidget {
  const CustomNameAndUserNameRepostedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Text(
            'donia omar ',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: defaultGoldColor,
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
          Text(
            '@dooniiaaomar',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),

        ],
      ),
    );
  }
}

