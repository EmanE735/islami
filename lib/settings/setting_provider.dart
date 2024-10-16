import 'package:flutter/material.dart';
//import 'package:islami/settings/language.dart';

class SettingsProvider with ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  String language = 'en';
  bool get isDark => themeMode == ThemeMode.dark;

  String get backgroundImageName =>
  isDark ? "bg" : "bg3";
  void changeTheme ( ThemeMode selectedTheme){
    themeMode = selectedTheme;
    notifyListeners();


  }
  void changeLanguage( String selectedLanguage){
    language = selectedLanguage;
    notifyListeners();

  }
}