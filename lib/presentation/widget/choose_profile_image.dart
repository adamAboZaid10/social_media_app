
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/assets_data.dart';
import '../controller/get_image_bloc/get_image_bloc.dart';

class ChooseProfileImageOrDefaultImage extends StatelessWidget {
   ChooseProfileImageOrDefaultImage({super.key,this.width,this.height});
double? width = 50;
double? height = 50;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetImageBloc,GetImageState>(
        builder: (context,state)
        {
          if(state is SelectedImageSuccessState)
          {
            return Center(
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: width,
                height: height,
                decoration:const  BoxDecoration(
                  shape: BoxShape.circle,

                ),
                child: Image.file(
                  state.selectedImage,
                  fit: BoxFit.cover,
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

                    fit: BoxFit.cover,
                  ),
                ));
          }
        }
    );
  }
}

