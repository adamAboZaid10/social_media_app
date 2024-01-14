import 'package:flutter/cupertino.dart';
import 'package:social_media_app/presentation/widget/widget_home_screen/custom_enter_with_group_item.dart';

class CustomEnterWithGroupListView extends StatelessWidget {
  const CustomEnterWithGroupListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*.08 ,
      child: ListView.separated(
        physics:const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>const CustomEnterWithGroupItem(),
        separatorBuilder:  (context,index)=> SizedBox(width:MediaQuery.of(context).size.width*.027,),
        itemCount: 12,
      ),
    );
  }
}



