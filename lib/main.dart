import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media_app/presentation/controller/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';
import 'package:social_media_app/presentation/controller/get_albums_bloc/get_albums_bloc.dart';
import 'package:social_media_app/presentation/controller/get_image_bloc/get_image_bloc.dart';
import 'package:social_media_app/presentation/controller/register_cubit/register_cubit.dart';
import 'package:social_media_app/presentation/controller/start_listning_bloc/start_listing_bloc.dart';
import 'package:social_media_app/presentation/controller/theme_cubit/theme_cubit.dart';
import 'package:social_media_app/presentation/controller/theme_cubit/theme_state.dart';
import 'package:social_media_app/presentation/screens/splash_screen.dart';

import 'core/styles/theme_styles.dart';
import 'core/utils/cach_helper_class.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  bool isDark=  sharedPreferences.getBool('isDark')??false;

  final PermissionState ps = await PhotoManager.requestPermissionExtend();

  ps.isAuth;
  runApp( MyApp(isDark: isDark,));
}

class MyApp extends StatelessWidget {
   MyApp({super.key, required this.isDark});
   final bool isDark;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(

      providers:
      [
        BlocProvider(create: (context)=>RegisterCubit()),
        BlocProvider(create: (context)=>GetImageBloc()),
        BlocProvider(create: (context)=>BottomNavBarBloc()),
        BlocProvider(create: (context)=>StartListingBloc()),
        BlocProvider(create: (context)=>GetAlbumsBloc()),
        BlocProvider(create: (context)=> ThemeCubit()..changeThemeMode(darkMode: isDark)),
      ],
      child: BlocBuilder<ThemeCubit,ThemeState>(
        builder: (context,state)
        {
          var cubit = ThemeCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: cubit.isDark? ThemeMode.dark:ThemeMode.light,
            home: Builder(
              builder: (BuildContext context) {
                String os = Platform.operatingSystem;
                print(os);
                if(MediaQuery.of(context).size.width.toInt()<= 560)
                {
                  return MediaQuery(
                      data: MediaQuery.of(context).copyWith(
                        textScaler: const TextScaler.linear(.6),
                      ),
                      child: const SplashScreen());
                }
                return const  SplashScreen();
              },),
          );
        },
      ),
    );
  }
}