import 'package:flutter/material.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/core/utils/assets_data.dart';
import 'package:social_media_app/presentation/widget/choose_profile_image.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';

import 'custom_features_result_screach.dart';

class SearchScreenBody extends StatelessWidget {
   SearchScreenBody({super.key});

   var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              Row(
                children: [
                  IconButton(onPressed: ()
                  {
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios)),
                  Expanded(
                    child: DefaultFormField(
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
                  ),
                ],
              ),
              const CustomFeaturesResultOfSearch(),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              Text(
                'People',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const CustomPeopleSearchScreen(),
              SizedBox(height: MediaQuery.of(context).size.height*.02,),
              const CustomPeopleSearchScreen(),
            ],
          ),
        ),
      ),
    );
  }

}

class CustomPeopleSearchScreen extends StatelessWidget {
  const CustomPeopleSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*.2,
      color: defaultDrawerColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children:
          [

            SizedBox(
              width: MediaQuery.of(context).size.width*.2,
              height: MediaQuery.of(context).size.height*.2,
              child: Image.asset(AssetsData.defaultProfileImage),
            ),
             SizedBox(width: MediaQuery.of(context).size.width*.05,),
             Expanded(
               child: Column(
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
             ),
            SizedBox(width: MediaQuery.of(context).size.width*.05,),
            CustomButtonRegisterWidget(
                onPressed: (){},
                color: defaultGoldColor,
                text: 'connect')

          ],
        ),
      ),
    );
  }
}

