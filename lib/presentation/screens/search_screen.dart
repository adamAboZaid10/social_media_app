import 'package:flutter/material.dart';

import '../widget/widget_search_screen/search_screen_body.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SearchScreenBody(),
    );
  }
}
