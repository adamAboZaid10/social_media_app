import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgSocializeWidget extends StatelessWidget {
  const CustomSvgSocializeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/socialized.svg',
      width: MediaQuery.of(context).size.width*.9,
      height: MediaQuery.of(context).size.width*.25,
    );
  }
}