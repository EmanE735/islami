import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:islami/settings/language.dart';

class SettingsProvider with ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  String language = "en";
  bool get isDark => themeMode == ThemeMode.dark;
  set isDark (bool value){
    isDark =value;
  }

 
  String get backgroundImageName =>
  isDark ? "bg" : "bg3";
  Future<void> changeTheme ( ThemeMode selectedTheme) async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    themeMode = selectedTheme;
    prefs.setBool("isDark", isDark);
    notifyListeners();

    

  }
 Future<void> changeLanguage( String selectedLanguage) async{
     final SharedPreferences prefs = await SharedPreferences.getInstance();
    language = selectedLanguage;
      prefs.setString("language", language);
    notifyListeners();

  }

  Future<void> getTheme() async {
     final SharedPreferences prefs = await SharedPreferences.getInstance();
     themeMode = prefs.getBool("isDark")==true ? ThemeMode.dark : ThemeMode.light;
      notifyListeners();

  }

    Future<void> getLanguage() async {
     final SharedPreferences prefs = await SharedPreferences.getInstance();
     
      language = prefs.getString("language")?? "en";
     
     
      notifyListeners();

  }
}