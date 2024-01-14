
import 'package:flutter/material.dart';

import 'custom_grid_view_item_social_screen.dart';

class CustomGridViewSocialScreen extends StatelessWidget {
  const CustomGridViewSocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      mainAxisSpacing: 2,
      childAspectRatio: 1 / 1.3,
      crossAxisSpacing: 3,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return const CustomGridViewItemSocialScreen();
      }),
    );
  }
}

