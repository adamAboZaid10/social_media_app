
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:social_media_app/core/utils/assets_data.dart';
import 'package:social_media_app/presentation/screens/login_screen.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_svg_socialize_widget.dart';


class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
      [
         SizedBox(height: MediaQuery.of(context).size.height*.1,),
        SizedBox(
            width:MediaQuery.of(context).size.width*.7,
            height: MediaQuery.of(context).size.height*.4,
            child: Lottie.asset(AssetsData.splashAnimation)),
         SizedBox(height: MediaQuery.of(context).size.height*.04,),
        const CustomSvgSocializeWidget(),
         SizedBox(height: MediaQuery.of(context).size.height*.08,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.04),
          child: CustomButtonRegisterWidget(
            width: double.infinity,
            onPressed: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>const LoginScreen()),
              );
            },
            color: Colors.white,
            text:'Get started ... ',),
        )
      ],
    );
  }
}







