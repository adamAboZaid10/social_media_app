
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
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*.029),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height: MediaQuery.of(context).size.height*.05,),
              const CustomSvgSocializeWidget(),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
               Text(
                'What’s your email?',
                style: Theme.of(context).textTheme.bodyText1,
              ),
               Text(
                'Enter the email where you can be contacted. No one will see this on your profile.',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15,fontWeight: FontWeight.w400),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
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
               Padding(
                padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.014),
                child:  Text(
                  'You may receive SMS notifications from us for security and login purposes.',
                  style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15,fontWeight: FontWeight.w400),
                ),
              ),
              CustomButtonRegisterWidget(
                  width: double.infinity,
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
              SizedBox(height: MediaQuery.of(context).size.height*.03,),

            ]

        ),
      ),
    );
  }
}
