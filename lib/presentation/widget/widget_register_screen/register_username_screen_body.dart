
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
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*.027),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height: MediaQuery.of(context).size.height*.05,),
              const CustomSvgSocializeWidget(),
              SizedBox(height: MediaQuery.of(context).size.height*.04,),
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
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
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
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              CustomButtonRegisterWidget(
                  width: double.infinity,
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
              SizedBox(height: MediaQuery.of(context).size.height*.03,),

            ]

        ),
      ),
    );
  }
}

