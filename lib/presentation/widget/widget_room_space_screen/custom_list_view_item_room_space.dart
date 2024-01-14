
import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/screens/room_space_screens/open_room_space_screen.dart';

import '../../../core/styles/color_theme.dart';
import '../../../core/utils/assets_data.dart';

class CustomItemListRoomSpace extends StatelessWidget {
  const CustomItemListRoomSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*.2,
      color: defaultDrawerColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: ()
          {
            Navigator.push(
                context,
              MaterialPageRoute(builder: (context)=>const OpenRoomSpaceScreen())
            );
          },
          child: Row(
            children:
            [

              SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                height: MediaQuery.of(context).size.height*.3,
                child: Image.asset(AssetsData.defaultImage),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*.05,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text(
                      'Software engineering buddies',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(color: defaultGoldColor,fontSize: 17),
                    ),
                    Text(
                      '733 members',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),
                    ),
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
                        const Spacer(),
                        const Icon(Icons.graphic_eq_outlined,size: 20,),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*.05,),

            ],
          ),
        ),
      ),
    );;
  }
}

