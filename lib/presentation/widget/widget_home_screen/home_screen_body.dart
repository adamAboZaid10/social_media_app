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
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  const CustomEnterWithGroupListView(),
                  SizedBox(height: MediaQuery.of(context).size.height*.056,),
                  Row(
                    children:
                      [
                        SizedBox(
                          width: MediaQuery.of(context).size.width*.06,
                           height: MediaQuery.of(context).size.height*.06,
                          child: Image.asset(AssetsData.defaultProfileImage),
                  ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*.06,
                          height: MediaQuery.of(context).size.height*.06,
                          child: Image.asset(AssetsData.defaultProfileImage),
                  ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*.06,
                          height: MediaQuery.of(context).size.height*.06,
                           child: Image.asset(AssetsData.defaultProfileImage),
                  ),
                        SizedBox(height: MediaQuery.of(context).size.height*.027,),
                        const Expanded(
                      child:  Text(
        
                        'shimaa  and 2 other repost this',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color:Colors.white,fontSize: 17,fontWeight: FontWeight.w600),)),
                            ],
                          ),
                  SizedBox(height: MediaQuery.of(context).size.height*.06,),
                  const CustomRepostListView(),
                ],
              ),
            ),
          ]),
      )
    );
  }
}






