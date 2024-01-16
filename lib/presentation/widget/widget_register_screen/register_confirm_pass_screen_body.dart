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
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height: MediaQuery.of(context).size.height*.05,),
              const CustomSvgSocializeWidget(),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
               Text(
                'Create a password',
                style: Theme.of(context).textTheme.bodyText1,
              ),
               Text(
                'Create a password with at least 6 letters or numbers. It should be something other can’t guess.',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15,fontWeight: FontWeight.w400),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
              BlocBuilder<RegisterCubit,RegisterState>(
                builder: (context,state)
                {
                  var cubit = RegisterCubit.get(context);
                  return DefaultFormField(
                    maxLine: 1,
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
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
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
              SizedBox(height: MediaQuery.of(context).size.height*.03,),

            ]

        ),
      ),
    );
  }
}

