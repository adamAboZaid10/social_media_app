import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_media_app/core/utils/assets_data.dart';

class CustomSvgSocializeWidget extends StatelessWidget {
  const CustomSvgSocializeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetsData.socializedSvg,
      width: MediaQuery.of(context).size.width*.9,
      height: MediaQuery.of(context).size.width*.25,
    );
  }
}