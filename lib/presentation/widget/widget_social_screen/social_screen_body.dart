import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/choose_profile_image.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';
import 'package:social_media_app/presentation/widget/widget_search_screen/custom_text_button_feature_search.dart';
import 'package:social_media_app/presentation/widget/widget_search_screen/search_screen_body.dart';

import '../../../core/styles/color_theme.dart';
import '../../../core/utils/assets_data.dart';
import 'custom_grid_view_social_screen.dart';

class SocialScreenBody extends StatelessWidget {
   SocialScreenBody({super.key});
var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              DefaultFormField(
                prefix: Icons.search,
                controller: searchController,
                type: TextInputType.text,
                validator: (value)
                {
                  return null;
                },
                hintText: 'search',
                obscure: false,
              ),
              SizedBox(height: MediaQuery.of(context).size.width*.03,),
              const CustomPeopleSearchScreen(),
              SizedBox(height: MediaQuery.of(context).size.width*.02,),
              const CustomPeopleSearchScreen(),
              SizedBox(height: MediaQuery.of(context).size.width*.02,),
               Text('People you may now from work',style: Theme.of(context).textTheme.bodyText1,),
              SizedBox(height: MediaQuery.of(context).size.width*.02,),
              const CustomGridViewSocialScreen(),
              SizedBox(height: MediaQuery.of(context).size.width*.02,),
            ],
          ),
        ),
      ),
    );
  }
}


