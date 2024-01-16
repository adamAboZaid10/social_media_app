
import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_svg_socialize_widget.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';

import '../../../core/styles/color_theme.dart';
import '../../screens/register_screens/add_register_profile_picture.dart';

class RegisterConfirmNumberOrEmailScreenBody extends StatelessWidget {
   RegisterConfirmNumberOrEmailScreenBody({super.key});
var confirmEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*.02),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height: MediaQuery.of(context).size.height*.05,),
              const CustomSvgSocializeWidget(),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
               Text(
                'Enter the confirmation code',
                style: Theme.of(context).textTheme.bodyText1,
              ),
               Text(
                'To confirm your account, enter the 6-digit code we sent to ....................@gmail.com',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15,fontWeight: FontWeight.w400),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              DefaultFormField(
                controller: confirmEmailController,
                type: TextInputType.number,
                validator: (value)
                {
                  if(value!.isEmpty)
                  {
                    return 'enter confirm email';
                  }
                  return null;
                },
                hintText: 'confirm code',
                obscure:false,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              CustomButtonRegisterWidget(
                  width: double.infinity,
                  onPressed: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const AddRegisterProfilePicture()),
                    );
                  },
                  color: defaultGoldColor,
                  text: "Next"
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              CustomButtonRegisterWidget(
                  width: double.infinity,
                  onPressed: ()
                  {

                  },
                  color: Colors.white,
                  text: "I didn’t get the code"
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),

            ]

        ),
      ),
    );
  }
}
