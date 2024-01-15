import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:social_media_app/presentation/controller/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';
import 'package:social_media_app/presentation/controller/get_albums_bloc/get_albums_bloc.dart';
import 'package:social_media_app/presentation/controller/get_image_bloc/get_image_bloc.dart';
import 'package:social_media_app/presentation/controller/register_cubit/register_cubit.dart';
import 'package:social_media_app/presentation/controller/start_listning_bloc/start_listing_bloc.dart';
import 'package:social_media_app/presentation/screens/splash_screen.dart';

import 'core/styles/theme_styles.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  final PermissionState ps = await PhotoManager.requestPermissionExtend();

  ps.isAuth;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.dark,
        home: const  SplashScreen(),
      ),
    );
  }
}