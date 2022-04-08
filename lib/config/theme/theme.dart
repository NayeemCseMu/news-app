import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/constants/app_color.dart';

//GetMaterialApp ThemeData
ThemeData themeData = ThemeData(
  primarySwatch: Colors.blue,
  textTheme: GoogleFonts.latoTextTheme(),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    elevation: 1.0,
    titleSpacing: 0.0,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      fontStyle: FontStyle.normal,
      color: Colors.black,
    ),
    iconTheme: IconThemeData(
      color: kDarkText,
    ),
  ),
);
