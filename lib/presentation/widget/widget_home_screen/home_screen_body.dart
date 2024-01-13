import 'package:flutter/material.dart';
import '../../../core/utils/assets_data.dart';
import 'custom_appbar_home_screen_widget.dart';
import 'custom_enter_with_group_list_view.dart';
import 'custom_reposted_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children:
          [
            const CustomAppBarHomeScreenWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const  SizedBox(height: 30,),
                  const CustomEnterWithGroupListView(),
                  const SizedBox(height: 40,),
                  Row(
                    children:
                      [
                        SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(AssetsData.defaultProfileImage),
                  ),
                        SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(AssetsData.defaultProfileImage),
                  ),
                        SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(AssetsData.defaultProfileImage),
                  ),
                        const SizedBox(width: 10,),
                        const Expanded(
                      child:  Text(
        
                        'shimaa  and 2 other repost this',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.w600),)),
                            ],
                          ),
                  const SizedBox(height: 40,),
                  const CustomRepostListView(),
                ],
              ),
            ),
          ]),
      )
    );
  }
}






