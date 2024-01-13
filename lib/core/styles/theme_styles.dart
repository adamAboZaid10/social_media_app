import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  // app bar themes
  appBarTheme:const AppBarTheme(
    backgroundColor: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor:  Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
    centerTitle:  true,
    titleTextStyle: TextStyle(
      color: Colors.black,
    ),
    iconTheme: IconThemeData(color: Colors.black),
  ),
  primarySwatch: Colors.deepOrange,
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  floatingActionButtonTheme:const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrange,

  ),
  textTheme: const TextTheme(
    bodyText1:TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
      color: Colors.black,
    ) ,
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 15.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ),
);


ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xff333739),
  // app bar themes
  appBarTheme:const AppBarTheme(
    elevation: 0,
    backgroundColor: Color(0xff333739),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
    centerTitle:  true,
    titleTextStyle: TextStyle(
      color: Colors.white,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  primarySwatch: Colors.deepOrange,
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  floatingActionButtonTheme:const FloatingActionButtonThemeData(
      backgroundColor: Colors.deepOrange
  ),
  textTheme: const TextTheme(
    bodyText1:TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      color: Colors.white,
    ) ,
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 15.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ),
);