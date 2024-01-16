
import 'package:flutter/material.dart';

import '../../../core/styles/color_theme.dart';
import '../choose_profile_image.dart';

class ImageUserNameSettingsScreen extends StatelessWidget {
  ImageUserNameSettingsScreen({
    super.key,
    required this.onTap,
    required this.onPressedIconButton,
    required this.onPressedTextButton,
    required this.text
  });
  GestureTapCallback onTap ;
  GestureTapCallback onPressedIconButton ;
  GestureTapCallback onPressedTextButton ;
  String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: defaultDrawerColor,
        ),

        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              ChooseProfileImageOrDefaultImage(
                width:MediaQuery.of(context).size.width*.12,
                height:MediaQuery.of(context).size.height*.12 ,
              ),
              SizedBox(width: MediaQuery.of(context).size.width*.03,),
               Expanded(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(
                      'Adam mohamed',
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),
                    ),
                    TextButton(
                        onPressed: onPressedTextButton,
                        child: Text(
                          text,
                          style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),
                        ),),
                  ],
                ),
              ),
              IconButton(onPressed: onPressedIconButton, icon: const Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
      ),
    );
  }
}


