
import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_svg_socialize_widget.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';

import '../../../core/styles/color_theme.dart';
import '../../screens/register_screens/register_confirm_phone_or_email_screen.dart';

class RegisterEmailScreenBody extends StatelessWidget {
   RegisterEmailScreenBody({super.key});
var emailController = TextEditingController();
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
                'What’s your email?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
              const Text(
                'Enter the email where you can be contacted. No one will see this on your profile.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 16,),
              DefaultFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                validator: (value)
                {
                  if(value!.isEmpty)
                  {
                    return 'enter your email';
                  }
                  return null;
                },
                hintText: 'Email',
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
                      MaterialPageRoute(builder: (context)=>const RegisterConfirmNumberOrEmailScreen()),
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
