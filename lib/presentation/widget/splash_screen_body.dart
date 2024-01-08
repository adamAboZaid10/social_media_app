
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/components/custom_botton_register.dart';
import '../../core/components/custom_svg_socialize_widget.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
      [
        const SizedBox(height: 50,),
        SizedBox(
            width:MediaQuery.of(context).size.width*.7,
            height: MediaQuery.of(context).size.height*.4,
            child: Lottie.asset('assets/images/splash_animation.json')),
        const SizedBox(height: 20,),
        const CustomSvgSocializeWidget(),
        const SizedBox(height: 60,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomButtonRegisterWidget(
            onPressed: ()
            {

            },
            color: Colors.white,
            text:'Get started ... ',),
        )
      ],
    );
  }
}







