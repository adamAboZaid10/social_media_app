import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/screens/settings_screens/account_settings_screen.dart';
import 'package:social_media_app/presentation/widget/widget_settings_screen/custom_appbar_settings_screen.dart';
import 'package:social_media_app/presentation/widget/widget_settings_screen/custom_item_settings_screen.dart';

import '../../../core/styles/color_theme.dart';
import '../../screens/settings_screens/edit_profile_screen.dart';
import '../widget_components/custom_botton_register.dart';
import 'custom_settings_background_color.dart';
import 'image_username_settings_screen.dart';

class DetailsSettingsScreenBody extends StatelessWidget {
  const DetailsSettingsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomSettingsScreenBackgroundColor(
          widget:  SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children:
                  [
                    const AppbarSettingsScreen(),
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: defaultDrawerColor,
                      ),
                      child: Column(
                        children: [
                          ImageUserNameSettingsScreen(
                            onTap: () {

                            }, onPressedIconButton: () {  },
                            onPressedTextButton: () { Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>const EditProfileScreen()),
                            ); },
                            text: 'Edit Profile',),
                          CustomSettingsScreenItem(
                              onTap: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>const AccountSettingsScreen()),
                                );
                              },
                              text: 'Account Settings',
                              iconData: Icons.arrow_forward_ios,
                              color: Colors.white,
                              iconColor: Colors.white
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.05,),
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
                              text: 'Notifications',
                              iconData: Icons.arrow_forward_ios,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'Appearance',
                              iconData: Icons.arrow_forward_ios,
                              color: Colors.white,
                              iconColor: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.05,),
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: defaultDrawerColor,
                      ),
                      child: Column(
                        children:
                        [
                          Text('Resources',style: Theme.of(context).textTheme.bodySmall,),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'Contact Support',
                              iconData: Icons.north_east,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'Rate in app store',
                              iconData: Icons.north_east,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'Follow@Socialize',
                              iconData: Icons.north_east,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'Data Sources',
                              iconData: Icons.north_east,
                              color: Colors.white,
                              iconColor: Colors.white),

                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.05,),
                    CustomButtonRegisterWidget(
                        textColor: Colors.white,
                        width: double.infinity,
                        onPressed: (){},
                        color: defaultDrawerColor,
                        text: 'Sign Out'),
                    SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  ],
                ),
              )),
        )
    );
  }
}
