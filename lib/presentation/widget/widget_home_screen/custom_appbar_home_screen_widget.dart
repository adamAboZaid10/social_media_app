
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_media_app/core/styles/color_theme.dart';

import '../../../core/utils/assets_data.dart';
import '../../controller/get_image_bloc/get_image_bloc.dart';

class CustomAppBarHomeScreenWidget extends StatelessWidget {
  const CustomAppBarHomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:
      [
        InkWell(
          onTap: (){
            Scaffold.of(context).openDrawer();
          },
          child: BlocBuilder<GetImageBloc,GetImageState>(
              builder: (context,state)
              {
                if(state is SelectedImageSuccessState)
                {
                  return Center(
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 30,
                      height: 30,
                      decoration:const  BoxDecoration(
                        shape: BoxShape.circle,

                      ),
                      child: Image.file(
                        state.selectedImage,
                      ),
                    ),
                  );
                }else{
                  return Center(
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          AssetsData.defaultProfileImage,
                        ),
                      ));
                }
              }
          ),
        ),
        Column(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width*.4,
                child: SvgPicture.asset(AssetsData.socializedSvg)),
            const SizedBox(
              height: 20,
            )
          ],
        ),
        IconButton(
            onPressed: ()
            {

            }, icon: const Icon(Icons.list,color: defaultGoldColor,size: 35,))

      ],
    );
  }
}

