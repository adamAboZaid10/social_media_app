import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';
import 'package:social_media_app/presentation/widget/widget_settings_screen/custom_settings_background_color.dart';

import '../../../core/utils/assets_data.dart';
import '../../controller/get_image_bloc/get_image_bloc.dart';
import '../widget_register_screen/show_dailog_image.dart';

class EditProfileScreenSettings extends StatelessWidget {
   EditProfileScreenSettings({super.key});
var bioController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: CustomSettingsScreenBackgroundColor(
          widget: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      IconButton(
                          onPressed: ()
                          {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                      Text('Edit Profile',style: Theme.of(context).textTheme.bodyText1,),
                     CustomButtonRegisterWidget(
                       textColor: Colors.white,
                         onPressed: (){}, color: Colors.grey, text: 'save')
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  BlocBuilder<GetImageBloc, GetImageState>(
                      builder: (context, state) {
                        if (state is SelectedImageSuccessState) {
                          return Center(
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
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
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: IconButton(
                                      onPressed: ()
                                      {
                                        showDialog(
                                          context: context,
                                          builder: (context) =>
                                          const ShowDialogImage(),
                                        );
                                      },
                                      icon: const Icon(Icons.camera_alt_outlined)),
                                ),

                              ],
                            ),
                          );
                        } else {
                          return Center(
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    AssetsData.defaultProfileImage,
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: IconButton(
                                      onPressed: ()
                                      {
                                        showDialog(
                                          context: context,
                                          builder: (context) =>
                                          const ShowDialogImage(),
                                        );
                                      },
                                      icon: const Icon(Icons.camera_alt_outlined)),
                                ),
                              ],
                            ),
                          );
                        }
                      }
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  const Text('Bio',style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),),
                  DefaultFormField(
                    maxLine: 3,
                      controller: bioController,
                      type: TextInputType.text,
                      validator: (v){
                        return null;
                      },
                      hintText: 'default bio',
                      obscure: false,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  const Text('Social Hands',style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),),
                  CustomSocialHandsEditProfile(text: 'Twitter', iconData: Icons.flight_outlined,),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  CustomSocialHandsEditProfile(text: 'Linkedin', iconData: Icons.indeterminate_check_box_rounded,),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  CustomSocialHandsEditProfile(text: 'Facebook', iconData: Icons.facebook,),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),CustomSocialHandsEditProfile(text: 'Twitter', iconData: Icons.flight_outlined,),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  CustomSocialHandsEditProfile(text: 'TikTok', iconData: Icons.tiktok,),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  CustomSocialHandsEditProfile(text: 'YouTube', iconData: Icons.youtube_searched_for,),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  CustomSocialHandsEditProfile(text: 'Website', iconData: Icons.language,),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),

                ],
              ),
            ),
          )
      ),
    );
  }
}



class CustomSocialHandsEditProfile extends StatelessWidget {
   CustomSocialHandsEditProfile({super.key,required this.text,required this.iconData});
String text;
IconData iconData;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
         Icon(iconData),
        SizedBox(width: MediaQuery.of(context).size.width*.03,),
        Expanded(child: Text(text,style: Theme.of(context).textTheme.bodyText1,)),
        Container(
          color: defaultDrawerColor,
          width: 120,
          height: 20,
          child:Text('user Name',style: Theme.of(context).textTheme.bodyText1
                !.copyWith(fontSize: 16,color: Colors.grey),) ,
        )

      ],
    );
  }
}

