import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/screens/register_screens/register_email_screen.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_svg_socialize_widget.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';

import '../../../core/styles/color_theme.dart';

class RegisterMobileNumberScreenBody extends StatelessWidget {
   RegisterMobileNumberScreenBody({super.key});
   var phoneController = TextEditingController();

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
                'What’s your mobile number?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
              const Text(
                'Enter the mobile number where you can be contacted. No one will see this on your profile.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 16,),
              DefaultFormField(
                controller: phoneController,
                type: TextInputType.phone,
                validator: (value)
                {
                  if(value!.isEmpty)
                  {
                    return 'enter your phone number';
                  }
                  return null;
                },
                hintText: 'phone number',
                obscure:false,
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'You may receive SMS notifications from us for security and login purposes.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              CustomButtonRegisterWidget(
                  onPressed: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const RegisterEmailScreen()),
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