

import 'package:flutter/material.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/core/utils/assets_data.dart';

class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*.02),
      child:const SingleChildScrollView(
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:
          [
            CustomListViewNotificationScreen()
          ],
        ),
      ),
    );
  }
}

class CustomListViewNotificationScreen extends StatelessWidget {
  const CustomListViewNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index)=>Container(
          width: double.infinity,
          color: defaultDrawerColor,
          child:  Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width*.02),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                SizedBox(
                  height: MediaQuery.of(context).size.height*.17,
                  width: MediaQuery.of(context).size.width*.17,
                  child: Image.asset(AssetsData.defaultProfileImage),
                ),
                Column(
                  children: [
                    Text(
                      'Adam Mohamed',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17),
                    ),
                    SizedBox(height:MediaQuery.of(context).size.height*.07 ,),
                    Text(
                      'Today 2:33 PM',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.grey,
                          fontSize: 16,fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(width:MediaQuery.of(context).size.width*.02 ,),
                Expanded(child: Text(
                  'invited you to join his team ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.grey,
                      fontSize: 16,fontWeight: FontWeight.w400),
                )),
              ],
            ),
          ),
        ),
        itemCount: 10);
  }
}

