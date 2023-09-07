import 'package:flutter/material.dart';

const String fontFamily = 'PlusJakarta';
const String altFontFamily = 'Inter';

ThemeData lightTheme = ThemeData(
  fontFamily: altFontFamily,
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

    primary: Color.fromARGB(255, 226, 50, 73),
    inversePrimary: Colors.white,

    secondary: Colors.grey.shade200,

    //Lines
    outline: const Color.fromARGB(255, 226, 50, 73),

    outlineVariant: const Color.fromRGBO(19, 19, 22, 0.25),
    // Drop Shadow Color
    shadow: const Color.fromRGBO(0, 0, 0, 0.15),
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
    primary: const Color.fromARGB(255, 181, 40, 59),
    secondary: Colors.grey.shade200,
    //Lines
    outline: const Color.fromARGB(255, 181, 40, 59),

    outlineVariant: const Color.fromRGBO(19, 19, 22, 0.25),
    // Drop Shadow Color
    shadow: const Color.fromRGBO(255, 255, 255, 0.15),
    //Text
    tertiary: const Color.fromRGBO(68, 68, 75, 1),
  ),
);
