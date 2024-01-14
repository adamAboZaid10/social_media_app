
import 'package:flutter/material.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/presentation/screens/layout_screen.dart';
import 'package:social_media_app/presentation/screens/register_screens/register_screen.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_svg_socialize_widget.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';


class LoginScreenBody extends StatelessWidget {
   LoginScreenBody({super.key});
   var emailController = TextEditingController();
   var passwordController = TextEditingController();
   var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
        child: SingleChildScrollView(
          physics:const  BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(

              children:
              [
                 SizedBox(height: MediaQuery.of(context).size.height*.1,),
                const CustomSvgSocializeWidget(),
                  SizedBox(height: MediaQuery.of(context).size.height*.08,),
                DefaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validator: (value)
                    {
                      if(!value!.contains('@'))
                      {
                        return 'invalid email';
                      }
                      return null;
                    },
                    hintText: '  email or phone',
                    obscure: false,
                ),
                  SizedBox(height: MediaQuery.of(context).size.height*.03,),
                DefaultFormField(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'please enter your password';
                      }
                      return null;
                    },
                    hintText: 'password',
                    obscure: false,
                ),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                CustomButtonRegisterWidget(
                    width: double.infinity,
                    onPressed: ()
                    {
                      if(formKey.currentState!.validate())
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>const LayoutScreen()));
                      }
                    },
                    color: defaultGoldColor,
                    text: "login"
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text(
                        'forget password?',
                      style: TextStyle(color: Colors.white),
                    )),
                  SizedBox(height: MediaQuery.of(context).size.height*.06,),
                CustomButtonRegisterWidget(
                    width: double.infinity,
                    onPressed: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>const RegisterScreen()),
                      );
                    },
                    color: Colors.white,
                    text: "create new account"
                ),
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

