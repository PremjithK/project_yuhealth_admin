import 'dart:ui';

import 'package:flutter/material.dart';

const String fontFamily = 'PlusJakarta';
const String altFontFamily = 'Inter';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    scrolledUnderElevation: 0,
    titleSpacing: 20,
    titleTextStyle: TextStyle(
        fontFamily: fontFamily,
        color: Color.fromARGB(255, 226, 50, 73),
        fontSize: 20,
        letterSpacing: -0.5,
        fontVariations: [FontVariation('wght', 800)]),
    iconTheme: IconThemeData(
      color: Color.fromARGB(255, 226, 50, 73),
    ),
    actionsIconTheme: IconThemeData(
      color: Color.fromARGB(255, 226, 50, 73),
    ),
  ),

  useMaterial3: true,
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

  // Button themes
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: fontFamily,
        ),
      ),
      backgroundColor: MaterialStatePropertyAll(
        Color.fromARGB(255, 226, 50, 73),
      ),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    ),
  ),

  //UI Scheme
  colorScheme: ColorScheme.light(
    //Background
    background: const Color.fromARGB(255, 235, 235, 235),
    onBackground: Colors.white,

    primary: const Color.fromARGB(255, 226, 50, 73),
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
