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
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.029),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height: MediaQuery.of(context).size.height*.05,),
              const CustomSvgSocializeWidget(),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
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
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
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
               Padding(
                padding:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height*.015 ),
                child:const Text(
                  'You may receive SMS notifications from us for security and login purposes.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              CustomButtonRegisterWidget(
                  width: double.infinity,
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
              SizedBox(height: MediaQuery.of(context).size.height*.03,),

            ]

        ),
      ),
    );
  }
}