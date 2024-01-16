import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/screens/register_screens/register_screen.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';
import 'package:social_media_app/presentation/widget/widget_settings_screen/custom_settings_background_color.dart';

import '../../../core/styles/color_theme.dart';
import 'custom_item_settings_screen.dart';

class AccountSettingScreenBody extends StatelessWidget {
  const AccountSettingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomSettingsScreenBackgroundColor(
          widget: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children:
              [
                Row(
                  children:
                  [
                    IconButton(
                        onPressed: ()
                        {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    SizedBox(width: MediaQuery.of(context).size.width*.03,),
                    Text('Account Settings',style: Theme.of(context).textTheme.bodyText1,)
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.07,),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: defaultDrawerColor,
                  ),
                  child: Column(
                    children:
                    [
                      CustomSettingsScreenItem(
                          onTap: (){},
                          text: 'Email',
                          iconData: Icons.arrow_forward_ios,
                          color: Colors.white,
                          iconColor: Colors.white),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomSettingsScreenItem(
                          onTap: (){},
                          text: 'Phone',
                          iconData: Icons.arrow_forward_ios,
                          color: Colors.white,
                          iconColor: Colors.white),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomSettingsScreenItem(
                          onTap: (){},
                          text: 'Username',
                          iconData: Icons.arrow_forward_ios,
                          color: Colors.white,
                          iconColor: Colors.white),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.07,),
                CustomButtonRegisterWidget(
                  width: double.infinity,
                  textColor: Colors.red,
                    onPressed: ()
                    {
                      Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context)=>const RegisterScreen()),
                      );
                    }, color: defaultDrawerColor, text: 'Delete Account')
              ],
            ),
          ),
        ));
  }
}
