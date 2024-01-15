import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/presentation/controller/get_albums_bloc/get_albums_bloc.dart';
import 'package:social_media_app/presentation/screens/profile_screen/albums_screen.dart';
import 'package:social_media_app/presentation/widget/choose_profile_image.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';

class CreateNewPostScreenBody extends StatelessWidget {
   CreateNewPostScreenBody({super.key});
var postController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children:
                [
                  SizedBox(height: MediaQuery.of(context).size.height*.1,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                       ChooseProfileImageOrDefaultImage(
                         width: MediaQuery.of(context).size.width*.6,
                         height: MediaQuery.of(context).size.height*.6,
                       ),
                      SizedBox(width: MediaQuery.of(context).size.width*.02,),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Text('Adam Mohamed',style: Theme.of(context).textTheme.bodyText1,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                              [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height*.04,
                                  child: CustomButtonRegisterWidget(
                                      onPressed: (){},
                                      color: defaultGoldColor,
                                      text: 'friends'),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height*.04,
                                  child: CustomButtonRegisterWidget(
                                      onPressed: (){},
                                      color: defaultGoldColor,
                                      text: 'public'),
                                ),
                              ],)
                            ],
                          )),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.04,),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DefaultFormField(
                        controller: postController,
                        type: TextInputType.text,
                        validator: (v){
                          return null;
                        },
                        hintText: 'Write A Caption....',
                        obscure: false,
                      maxLine: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            IconButton(onPressed: ()
            {
              context.read<GetAlbumsBloc>().add(GetAlbumEvent());
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>const AlbumsScreen()),
              );
            }, icon: const Icon(Icons.image)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.video_call)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz)),
          ],
        )
      ],
    );
  }
}
