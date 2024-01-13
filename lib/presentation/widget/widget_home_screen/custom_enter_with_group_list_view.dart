import 'package:flutter/cupertino.dart';
import 'package:social_media_app/presentation/widget/widget_home_screen/custom_enter_with_group_item.dart';

class CustomEnterWithGroupListView extends StatelessWidget {
  const CustomEnterWithGroupListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:50 ,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>const CustomEnterWithGroupItem(),
        separatorBuilder:  (context,index)=>const SizedBox(width: 10,),
        itemCount: 12,
      ),
    );
  }
}



