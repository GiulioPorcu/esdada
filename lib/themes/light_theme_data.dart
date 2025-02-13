import 'package:flutter/material.dart';

class LightThemeData {
  double fontSizeLarge = 20;
  double fontSizeMedium = 14;
  double fontSizeSmall = 12;

  getInstance() {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        surface: Colors.grey.shade200,
        primary: Colors.green.shade900,
        secondary: Colors.green.shade600,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: fontSizeLarge,
          color: Colors.black,
        ),
        headlineMedium: TextStyle(
          fontSize: fontSizeMedium,
          color: Colors.black,
        ),
        headlineSmall: TextStyle(
          fontSize: fontSizeSmall,
          color: Colors.black,
        ),
        labelSmall: TextStyle(
          fontSize: fontSizeSmall,
          color: Colors.lightGreen,
        ),
      ),
    );
  }
}
