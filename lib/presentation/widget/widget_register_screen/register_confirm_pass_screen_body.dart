import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_app/presentation/screens/register_screens/register_birthday_screen.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_svg_socialize_widget.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';

import '../../../core/styles/color_theme.dart';
import '../../controller/register_cubit/register_cubit.dart';

class RegisterConfirmPassScreenBody extends StatelessWidget {
   RegisterConfirmPassScreenBody({super.key});
   var passController = TextEditingController();
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
                'Create a password',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
              const Text(
                'Create a password with at least 6 letters or numbers. It should be something other can’t guess.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 16,),
              BlocBuilder<RegisterCubit,RegisterState>(
                builder: (context,state)
                {
                  var cubit = RegisterCubit.get(context);
                  return DefaultFormField(
                    controller: passController,
                    type: TextInputType.visiblePassword,
                    validator: (value)
                    {
                      if(value!.length< 6)
                      {
                        return 'enter your password with at least6 letters';
                      }
                      return null;
                    },
                    hintText: 'Re-Enter Password',
                    obscure: cubit.obscureText,
                    suffix: cubit.suffix,
                    suffixPressed: ()
                    {
                      cubit.changePasswordVisibility();
                    },
                  );
                },
              ),
              const SizedBox(height: 16,),
              CustomButtonRegisterWidget(
                  width: double.infinity,
                  onPressed: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const RegisterBirthDayScreen()),
                    );
                  },
                  color:defaultGoldColor,
                  text: "Next"
              ),
              const SizedBox(height: 16,),

            ]

        ),
      ),
    );
  }
}

