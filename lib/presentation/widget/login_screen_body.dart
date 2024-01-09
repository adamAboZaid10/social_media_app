
import 'package:flutter/material.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics:const  BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(

              children:
              [
                const SizedBox(height: 80,),
                const CustomSvgSocializeWidget(),
                const  SizedBox(height: 50,),
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
                const  SizedBox(height: 20,),
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
                const  SizedBox(height: 30,),
                CustomButtonRegisterWidget(
                    onPressed: ()
                    {
                      if(formKey.currentState!.validate())
                      {

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
                const  SizedBox(height: 40,),
                CustomButtonRegisterWidget(
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
                const  SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

