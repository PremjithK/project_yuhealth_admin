import 'package:flutter/material.dart';

const String fontFamily = 'PlusJakarta';
const String altFontFamily = 'Inter';

ThemeData lightTheme = ThemeData(
  fontFamily: fontFamily,
  brightness: Brightness.light,

  //Text Theme
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color.fromRGBO(68, 68, 75, 1),
    ),
    displayMedium: TextStyle(
      color: Color.fromRGBO(68, 68, 75, 1),
    ),
  ),

  //UI Scheme
  colorScheme: ColorScheme.light(
    //Background
    background: const Color.fromRGBO(244, 244, 245, 1),
    onBackground: Colors.white,

    primary: const Color.fromRGBO(50, 104, 226, 1),
    inversePrimary: Colors.white,

    secondary: Colors.grey.shade200,

    //Lines
    outline: const Color.fromRGBO(50, 104, 226, 1),

    outlineVariant: const Color.fromRGBO(19, 19, 22, 0.25),
    // Drop Shadow Color
    shadow: const Color.fromRGBO(0, 0, 0, 0.25),
    //Text
    tertiary: const Color.fromRGBO(68, 68, 75, 1),
  ),
);

//DARK
ThemeData darkTheme = ThemeData(
  //Text Theme
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
    ),
  ),

  fontFamily: fontFamily,
  colorScheme: ColorScheme.dark(
    //Backgrounds
    background: Colors.black,
    onBackground: Colors.grey.shade900,

    // Main Colors
    primary: const Color.fromRGBO(50, 104, 226, 1),
    secondary: Colors.grey.shade200,
    //Lines
    outline: const Color.fromRGBO(50, 104, 226, 1),

    outlineVariant: const Color.fromRGBO(19, 19, 22, 0.25),
    // Drop Shadow Color
    shadow: const Color.fromRGBO(0, 0, 0, 0.25),
    //Text
    tertiary: const Color.fromRGBO(68, 68, 75, 1),
  ),
);
