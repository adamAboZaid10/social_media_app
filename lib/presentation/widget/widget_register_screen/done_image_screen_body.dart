import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_app/presentation/screens/layout_screen.dart';
import 'package:social_media_app/presentation/widget/widget_register_screen/show_dailog_image.dart';

import '../../../core/styles/color_theme.dart';
import '../../../core/utils/assets_data.dart';
import '../../controller/get_image_bloc/get_image_bloc.dart';
import '../../screens/home_screen.dart';
import '../widget_components/custom_botton_register.dart';

class DoneImageScreenBody extends StatelessWidget {
  const DoneImageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const SizedBox(height: 32,),
            Text(
              'Add a profile picture',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1!,
            ),
            const SizedBox(height: 16,),
            Text(
              'Add a profile picture so your friends know it’s you. Everyone will be able to see your picture.',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 17,

              ),
            ),
            const SizedBox(height: 32,),

            BlocBuilder<GetImageBloc, GetImageState>(
                builder: (context, state) {
                  if (state is SelectedImageSuccessState) {
                    return Center(
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        width: 100,
                        height: 100,
                        decoration:const  BoxDecoration(
                          shape: BoxShape.circle,

                        ),
                        child: Image.file(
                          state.selectedImage,
                        ),
                      ),
                    );
                  } else {
                    return Center(
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          AssetsData.defaultProfileImage,
                        ),
                      ),
                    );
                  }
                }
            ),
            const Spacer(),
            CustomButtonRegisterWidget(
              width: double.infinity,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const LayoutScreen()));
              },
              color: defaultGoldColor,
              text: 'Done',
            ),
            const SizedBox(height: 10,),
            CustomButtonRegisterWidget(
              width: double.infinity,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) =>
                  const ShowDialogImage(),
                );
              },
              color: Colors.white,
              text: 'Change Image',
            ),
            const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
