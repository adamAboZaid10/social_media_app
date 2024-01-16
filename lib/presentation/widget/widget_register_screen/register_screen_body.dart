import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/screens/register_screens/register_password_screen.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_svg_socialize_widget.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';

import '../../../core/styles/color_theme.dart';

class RegisterScreenBody extends StatelessWidget {
   RegisterScreenBody({super.key});

   var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
             SizedBox(height: MediaQuery.of(context).size.height*.05,),
            const CustomSvgSocializeWidget(),
             SizedBox(height: MediaQuery.of(context).size.height*.04,),
             Text(
                'what is your name?',
              style: Theme.of(context).textTheme.bodyText1,
            ),
             Text(
                'Add your name so friends can find you. ',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15,fontWeight: FontWeight.w400),
            ),
             SizedBox(height: MediaQuery.of(context).size.height*.03,),
            DefaultFormField(
              controller: nameController,
              type: TextInputType.text,
              validator: (value)
              {
                if(value!.isEmpty)
                {
                  return 'enter your name';
                }
                return null;
              },
              hintText: 'user name',
              obscure: false,
            ),
             SizedBox(height: MediaQuery.of(context).size.height*.03,),
            CustomButtonRegisterWidget(
                width: double.infinity,
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const RegisterPasswordScreen()),
                  );
                },
                color: defaultGoldColor,
                text: "Next"
            ),
             SizedBox(height: MediaQuery.of(context).size.height*.03,),

          ]

        ),
      ),
    );
  }
}