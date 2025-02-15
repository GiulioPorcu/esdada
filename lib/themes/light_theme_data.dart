import 'package:flutter/material.dart';

class LightThemeData {
  double fontSizeLarge = 20;
  double fontSizeMedium = 14;
  double fontSizeSmall = 12;

  Color backgroundColor = Colors.grey.shade100;
  Color backgroundColorDim = Colors.grey.shade300;
  Color primary = Colors.blue.shade900;
  Color secondary = Colors.blue.shade600;
  Color headlineColor = Colors.black;
  Color bodyColor = Colors.black;
  Color labelColor = Colors.blue.shade900;
  Color onSurfaceColor = Colors.black;

  getInstance() {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        surface: backgroundColor,
        surfaceDim: backgroundColorDim,
        onSurface: onSurfaceColor,
        primary: primary,
        secondary: secondary,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: fontSizeLarge,
          color: headlineColor,
        ),
        headlineMedium: TextStyle(
          fontSize: fontSizeMedium,
          color: headlineColor,
        ),
        headlineSmall: TextStyle(
          fontSize: fontSizeSmall,
          color: headlineColor,
        ),
        bodyLarge: TextStyle(
          fontSize: fontSizeLarge,
          color: bodyColor,
        ),
        bodyMedium: TextStyle(
          fontSize: fontSizeMedium,
          color: bodyColor,
        ),
        bodySmall: TextStyle(
          fontSize: fontSizeSmall,
          color: bodyColor,
        ),
        labelLarge: TextStyle(
          fontSize: fontSizeLarge,
          color: labelColor,
        ),
        labelMedium: TextStyle(
          fontSize: fontSizeMedium,
          color: labelColor,
        ),
        labelSmall: TextStyle(
          fontSize: fontSizeSmall,
          color: labelColor,
        ),
      ),
    );
  }
}
