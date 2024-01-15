import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_home_screen/custom_reposted_list_view.dart';

class MyPostsScreenBody extends StatelessWidget {
  const MyPostsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding:const EdgeInsets.all(10.0),
        child: Column(
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Text('your videos ',style: Theme.of(context).textTheme.bodyText1,),
                TextButton(
                    onPressed: (){},
                    child: Text('All',style: Theme.of(context).textTheme.bodyText1,)
                ),

              ],
            ),
            const CustomRepostListView(),
          ],
        ),
      ),
    );
  }
}
