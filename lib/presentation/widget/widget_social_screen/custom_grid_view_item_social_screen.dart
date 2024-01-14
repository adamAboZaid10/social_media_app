

import 'package:flutter/material.dart';

import '../../../core/styles/color_theme.dart';
import '../../../core/utils/assets_data.dart';
import '../widget_components/custom_botton_register.dart';

class CustomGridViewItemSocialScreen extends StatelessWidget {
  const CustomGridViewItemSocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: defaultDrawerColor,
          borderRadius: BorderRadius.circular(20)
      ),
      height: MediaQuery.of(context).size.height*.35,
      width: MediaQuery.of(context).size.width*.4,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:
          [

            SizedBox(
              width: MediaQuery.of(context).size.width*.1,
              height: MediaQuery.of(context).size.height*.1,
              child: Image.asset(AssetsData.defaultProfileImage),
            ),
            SizedBox(width: MediaQuery.of(context).size.height*.05,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(
                  'Name person',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  'job',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16,fontWeight: FontWeight.w600),
                ),
                Row(
                  children:
                  [
                    const Icon(Icons.language,size: 20,),
                    Expanded(
                      child: Text(
                        '4 mutual connections',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16,fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.height*.05,),
            CustomButtonRegisterWidget(onPressed: (){}, color: defaultGoldColor, text: 'connect')

          ],
        ),
      ),
    );
  }
}

