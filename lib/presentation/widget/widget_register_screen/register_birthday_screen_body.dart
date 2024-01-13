
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/presentation/controller/register_cubit/register_cubit.dart';
import 'package:social_media_app/presentation/widget/show_date_picker_custom.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_svg_socialize_widget.dart';
import 'package:social_media_app/presentation/widget/widget_components/default_text_form_field.dart';

import '../../screens/register_screens/register_username_screen.dart';

class RegisterBirthDayScreenBody extends StatelessWidget {
   RegisterBirthDayScreenBody({super.key});

var birthdayController = TextEditingController();
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
                'What’s your birthday?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
              const Text(
                'Use Your own birthday, even if this account is for a business, a pet or something else. No one will see this unless you choose to share it. why do i need to provide my birthday?',
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
                  return InkWell(
                    onTap: (){
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context)=>
                            ShowDatePickerCustom(),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      color: defaultFormFieldColor,
                      child: Center(
                          child: Text(
                            '${cubit.dateTime.month}-${cubit.dateTime.day}-${cubit.dateTime.year}',
                            style: const TextStyle(color: Colors.white),)),
                    ),
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
                      MaterialPageRoute(builder: (context)=>const RegisterUserNameScreen()),
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



