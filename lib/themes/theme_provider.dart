import 'package:esdada/services/storage_service.dart';
import 'package:esdada/themes/dark_theme_data.dart';
import 'package:esdada/themes/light_theme_data.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  final String key = "theme";
  final String lightThemeValue = "light";
  final String darkThemeValue = "dark";

  bool isLightTheme = true;
  ThemeData? currentTheme;

  ThemeProvider() {
    StorageService().instance?.getString(key) == lightThemeValue
        ? setLightTheme()
        : setDarkTheme();
    notifyListeners();
  }

  void setLightTheme() {
    currentTheme = LightThemeData().getInstance();
    isLightTheme = true;
    StorageService().instance?.setString(key, lightThemeValue);
  }

  void setDarkTheme() {
    currentTheme = DarkThemeData().getInstance();
    isLightTheme = false;
    StorageService().instance?.setString(key, darkThemeValue);
  }

  void toggleTheme() {
    isLightTheme ? setDarkTheme() : setLightTheme();
    notifyListeners();
  }
}
