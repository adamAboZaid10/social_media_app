import 'package:flutter/material.dart';

import 'custom_text_button_feature_search.dart';

class CustomFeaturesResultOfSearch extends StatelessWidget {
  const CustomFeaturesResultOfSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        CustomTextButtonFeatureSearch(onPressed: (){}, text: 'All'),
        CustomTextButtonFeatureSearch(onPressed: (){}, text: 'People'),
        CustomTextButtonFeatureSearch(onPressed: (){}, text: 'post'),
        CustomTextButtonFeatureSearch(onPressed: (){}, text: 'Room'),
        CustomTextButtonFeatureSearch(onPressed: (){}, text: 'Video'),
      ],
    );
  }
}
