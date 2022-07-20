import 'package:flutter/material.dart';

const primaryColorValue = 0xFF36BBD9;
const primaryColor = Color(0xFF36BBD9);

ThemeData getLightThemeData() {
  return ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFFFAFAFA),
    primarySwatch: const MaterialColor(
      primaryColorValue,
      <int, Color>{
        50: Color(0XFF90DAEA),
        100: Color(0XFF86D6E8),
        200: Color(0XFF72CFE4),
        300: Color(0XFF5EC9E1),
        400: Color(0XFF4AC2DD),
        500: Color(primaryColorValue),
        600: Color(0XFF31A8C3),
        700: Color(0XFF2B96AE),
        800: Color(0XFF268398),
        900: Color(0XFF207082),
      },
    ),

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      foregroundColor: Colors.white,
      // color: primaryColor,
    ),
  );
}