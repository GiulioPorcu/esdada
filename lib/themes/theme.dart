import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: ColorScheme.light(
        surface: Colors.blueGrey.shade300,
        primary: Colors.blueGrey.shade500,
        secondary: Colors.blueGrey.shade400),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 28, color: Colors.black),
      headlineMedium: TextStyle(fontSize: 60, color: Colors.black),
      headlineSmall: TextStyle(fontSize: 14, color: Colors.black),
    ));

ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      surface: Colors.blueGrey.shade600,
      primary: Colors.blueGrey.shade800,
      secondary: Colors.blueGrey.shade700,
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 28, color: Colors.white),
      headlineMedium: TextStyle(fontSize: 20, color: Colors.white),
      headlineSmall: TextStyle(fontSize: 14, color: Colors.white),
    ));
