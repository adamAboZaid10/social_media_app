
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_app/core/styles/color_theme.dart';
import 'package:social_media_app/presentation/controller/theme_cubit/theme_cubit.dart';
import 'package:social_media_app/presentation/controller/theme_cubit/theme_state.dart';
import 'package:social_media_app/presentation/screens/settings_screens/details_settings_screen.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';

import 'custom_appbar_settings_screen.dart';
import 'custom_item_settings_screen.dart';
import 'custom_settings_background_color.dart';
import 'image_username_settings_screen.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: CustomSettingsScreenBackgroundColor(
          widget: SingleChildScrollView(
              child: Padding(
                padding:  const EdgeInsets.all(12.0),
                child: Column(
                  children:
                  [
                    const  AppbarSettingsScreen(),
                    ImageUserNameSettingsScreen(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>const DetailsSettingsScreen())
                        );
                      },
                      onPressedIconButton: () {  },
                      onPressedTextButton: () {  },
                      text: '@adam',),
                    SizedBox(height: MediaQuery.of(context).size.height*.05,),
                    CustomSettingsScreenItem(
                        onTap: (){},
                        text: 'Pause notifications ',
                        iconData: Icons.notification_add_outlined,
                        color: Colors.white,
                        iconColor: Colors.white),
                    const Divider(
                      thickness: 1,
                    ),
                    CustomSettingsScreenItem(
                        onTap: (){},
                        text: 'Pause notifications ',
                        iconData: Icons.arrow_forward_ios,
                        color: Colors.white,
                        iconColor: Colors.white),
                    SizedBox(height: MediaQuery.of(context).size.height*.05,),
                    CustomSettingsScreenItem(
                        onTap: (){},
                        text: 'Create Room ',
                        iconData: Icons.arrow_forward_ios,
                        color: Colors.white,
                        iconColor: Colors.white),
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
                          BlocBuilder<ThemeCubit,ThemeState>(
                            builder: (context,state)
                            {
                              var cubit = ThemeCubit.get(context);
                              return  CustomSettingsScreenItem(
                                  onTap: ()
                                  {
                                    cubit.changeThemeMode();
                                  },
                                  text: 'color scheme ',
                                  iconData: Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  iconColor: Colors.white);
                            },

                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'languages',
                              iconData: Icons.arrow_forward_ios,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'blocked users',
                              iconData: Icons.arrow_forward_ios,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'saved',
                              iconData: Icons.arrow_forward_ios,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'media',
                              iconData: Icons.arrow_forward_ios,
                              color: Colors.white,
                              iconColor: Colors.white)
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
                              text: 'what’s new',
                              iconData: Icons.north_east,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'faq',
                              iconData: Icons.north_east,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'contact us',
                              iconData: Icons.north_east,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'community guidelines',
                              iconData: Icons.north_east,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'terms of service',
                              iconData: Icons.north_east,
                              color: Colors.white,
                              iconColor: Colors.white),
                          const Divider(
                            thickness: 1,
                          ),
                          CustomSettingsScreenItem(
                              onTap: (){},
                              text: 'privacy policy',
                              iconData: Icons.north_east,
                              color: Colors.white,
                              iconColor: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.05,),
                    CustomButtonRegisterWidget(
                        textColor: Colors.red,
                        width: double.infinity,
                        onPressed: (){},
                        color: defaultDrawerColor,
                        text: 'logout'),
                    SizedBox(height: MediaQuery.of(context).size.height*.05,),


                  ],
                ),
              ))),
    );
  }
}



