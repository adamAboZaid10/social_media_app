
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
              SizedBox(height: MediaQuery.of(context).size.height*.05,),
              const CustomSvgSocializeWidget(),
              SizedBox(height: MediaQuery.of(context).size.height*.04,),
               Text(
                'What’s your birthday?',
                style: Theme.of(context).textTheme.bodyText1,
              ),
               Text(
                'Use Your own birthday, even if this account is for a business, a pet or something else. No one will see this unless you choose to share it. why do i need to provide my birthday?',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 15,fontWeight: FontWeight.w400),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
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
              SizedBox(height: MediaQuery.of(context).size.height*.03,),
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
              SizedBox(height: MediaQuery.of(context).size.height*.03,),

            ]

        ),
      ),
    );
  }
}



