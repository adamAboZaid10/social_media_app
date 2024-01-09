
import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_svg_socialize_widget.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';

import '../../../core/styles/color_theme.dart';
import '../../screens/register_screens/register_mobile_number_screen.dart';

class RegisterUserNameScreenBody extends StatelessWidget {
   RegisterUserNameScreenBody({super.key});

   var usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                'Create a username',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
              const Text(
                'Add a username or use our suggestion. You can change this at any time.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 16,),
                DefaultFormField(
                    controller: usernameController,
                    type: TextInputType.text,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'enter your username';
                      }
                      return null;
                    },
                    hintText: 'UserName',
                    obscure:false,
                    suffix: Icons.done,
              ),
              const SizedBox(height: 16,),
              CustomButtonRegisterWidget(
                  onPressed: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const RegisterMobileNumberScreen()),
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

