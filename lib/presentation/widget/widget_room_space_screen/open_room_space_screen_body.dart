import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:social_media_app/core/utils/assets_data.dart';
import 'package:social_media_app/presentation/screens/room_space_screens/start_listening_screen.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_room_space_screen/custom_grid_view_open_room_space_widget.dart';

import '../../../core/styles/color_theme.dart';

class OpenRoomSpaceScreenBody extends StatelessWidget {
  const OpenRoomSpaceScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
      child: SingleChildScrollView(
        child: Column(
          children:
          [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width*.5,
                height: MediaQuery.of(context).size.height*.3,
                  child: Lottie.asset(AssetsData.defaultThirdAnimation)),
            ),
            Row(
              children:
              [
                Expanded(
                  child: Text(
                    'Software engineering buddies',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(color: defaultGoldColor,fontSize: 17),
                  ),
                ),
                OutlinedButton(
                    onPressed: ()
                    {
                      Navigator.pop(context);
                    },
                    child: Text('Leaving',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.red,fontSize: 17),)
                ),

              ],
            ),
            const CustomGridViewOpenRoomSpace(),
            CustomButtonRegisterWidget(
                onPressed: ()
                {
                  Navigator.push(
                      context, 
                    MaterialPageRoute(builder: (context)=>const StartListeningScreen())
                  );
                },
                color: defaultGoldColor,
                text: 'Start listening')

          ],
        ),
      ),
    );
  }
}
