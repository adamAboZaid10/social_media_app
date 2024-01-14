
import 'package:flutter/material.dart';

import 'custom_list_view_item_room_space.dart';

class CustomListViewRoomSpace extends StatelessWidget {
  const CustomListViewRoomSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index)=>const CustomItemListRoomSpace(),
        separatorBuilder: (context,index)=>const SizedBox(
          height: 10,
        ),
        itemCount: 10);
  }
}
