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
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            const SizedBox(height: 30,),
            const CustomSvgSocializeWidget(),
            const SizedBox(height: 20,),
            const Text(
                'what is your name?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            const Text(
                'Add your name so friends can find you. ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 16,),
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
            const SizedBox(height: 16,),
            CustomButtonRegisterWidget(
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
            const SizedBox(height: 16,),

          ]

        ),
      ),
    );
  }
}