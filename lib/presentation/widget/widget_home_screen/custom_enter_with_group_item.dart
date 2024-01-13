import 'package:flutter/material.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/core/utils/assets_data.dart';

class CustomEnterWithGroupItem extends StatelessWidget {
  const CustomEnterWithGroupItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: 200,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              defaultFirstGradientColor,
              Colors.pinkAccent,
            ],
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children:
            [
              SizedBox(
                width: 20,
                height: 20,
                child: Image.asset(AssetsData.defaultProfileImage),
              ),
              SizedBox(
                width: 20,
                height: 20,
                child: Image.asset(AssetsData.defaultProfileImage),
              ),
              SizedBox(
                width: 20,
                height: 20,
                child: Image.asset(AssetsData.defaultProfileImage),
              ),
              const SizedBox(width: 10,),
              const Expanded(
                  child:  Text(

                    'shimaa  and 2 other',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color:Colors.white,fontSize: 12,fontWeight: FontWeight.w600),)),
              const Icon(Icons.mic)
            ],
          ),
        ),
      ),
    );
  }
}
