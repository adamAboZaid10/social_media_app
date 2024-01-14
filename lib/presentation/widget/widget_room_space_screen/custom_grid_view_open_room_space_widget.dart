
import 'package:flutter/material.dart';

import '../../../core/utils/assets_data.dart';


class CustomGridViewOpenRoomSpace extends StatelessWidget {
  const CustomGridViewOpenRoomSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      mainAxisSpacing: 1,
      childAspectRatio: 1 / 1,
      crossAxisSpacing: 1,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return  Column(
          children:
          [

            SizedBox(
              width: MediaQuery.of(context).size.width*.1,
              height: MediaQuery.of(context).size.height*.1,
              child: Image.asset(AssetsData.defaultProfileImage),
            ),
            SizedBox(width: MediaQuery.of(context).size.height*.05,),
            Text(
              'Ahmed',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'host',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16,fontWeight: FontWeight.w600),
            ),
            SizedBox(width: MediaQuery.of(context).size.height*.05,),
          ],
        );
      }),
    );
  }
}

