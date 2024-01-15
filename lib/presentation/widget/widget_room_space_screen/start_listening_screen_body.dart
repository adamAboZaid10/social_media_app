import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:social_media_app/core/utils/assets_data.dart';
import 'package:social_media_app/presentation/controller/start_listning_bloc/start_listing_bloc.dart';
import 'package:social_media_app/presentation/widget/widget_room_space_screen/custom_grid_view_open_room_space_widget.dart';

import '../../../core/styles/color_theme.dart';
import '../widget_components/outline_icon_button_widget.dart';

class StartListeningScreenBody extends StatelessWidget {
  const StartListeningScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
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

              ],
            ),
          ),
          BlocBuilder<StartListingBloc,StartListingState>(
              builder: (context,state)
              {
                if(state is StartListingInitial)
                {
                  return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  [
                    OutLineIconButtonWidget(
                      onPressed: ()
                      {
                        context.read<StartListingBloc>().add(OpenMicEvent());
                      },
                      iconData:Icons.mic_off,
                      color: defaultGoldColor,),
                    OutLineIconButtonWidget(
                      onPressed: () {  },
                      iconData: Icons.person,
                      color: defaultGoldColor,),
                    OutLineIconButtonWidget(
                      onPressed: ()
                      {
                        context.read<StartListingBloc>().add(LikeEvent());
                      },
                      iconData: Icons.favorite,
                      color: Colors.red,),
                    OutLineIconButtonWidget(
                      onPressed: () {  },
                      iconData: Icons.message,
                      color: defaultGoldColor,),

                  ],);
                }else if(state is OpenMicState)
                {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      OutLineIconButtonWidget(
                        onPressed: ()
                        {
                          context.read<StartListingBloc>().add(OpenMicEvent());
                        },
                        iconData:state.mic?Icons.mic_off:Icons.mic,
                        color: defaultGoldColor,),
                      OutLineIconButtonWidget(
                        onPressed: () {  },
                        iconData: Icons.person,
                        color: defaultGoldColor,),
                      OutLineIconButtonWidget(
                        onPressed: () {  },
                        iconData: Icons.favorite,
                        color: Colors.red,),
                      OutLineIconButtonWidget(
                        onPressed: () {  },
                        iconData: Icons.message,
                        color: defaultGoldColor,),

                    ],);
                }
                else if(state is LikeState)
                {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      OutLineIconButtonWidget(
                        onPressed: ()
                        {
                          context.read<StartListingBloc>().add(OpenMicEvent());
                        },
                        iconData:Icons.mic_off,
                        color: defaultGoldColor,),
                      OutLineIconButtonWidget(
                        onPressed: () {  },
                        iconData: Icons.person,
                        color: defaultGoldColor,),
                      OutLineIconButtonWidget(
                        onPressed: ()
                        {
                          context.read<StartListingBloc>().add(OpenMicEvent());
                        },
                        iconData: Icons.favorite,
                        color: state.like?Colors.white:Colors.red,),
                      OutLineIconButtonWidget(
                        onPressed: () {  },
                        iconData: Icons.message,
                        color: defaultGoldColor,),

                    ],);
                }
                return Container();

              }
          ),

        ],
      ),
    );
  }
}

