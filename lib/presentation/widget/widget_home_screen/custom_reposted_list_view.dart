
import 'package:flutter/material.dart';

import 'custom_repost_list_view_item.dart';

class CustomRepostListView extends StatelessWidget {
  const CustomRepostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index)=>const CustomRepostedListViewItem(),
        separatorBuilder: (context,index)=>  SizedBox(height: MediaQuery.of(context).size.height*.02,),
        itemCount: 10
    );
  }
}

