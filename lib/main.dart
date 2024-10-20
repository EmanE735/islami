import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/quran/sura_content_screen.dart';


void main() => runApp(IslamiApp());

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      routes: {
        HomeScreen.routeName:(_) => HomeScreen(),
        SuraContentScreen.routeName:(_)=>SuraContentScreen(),
      },
      initialRoute:HomeScreen.routeName ,
      theme: AppTheme.lighttheme,
      darkTheme:AppTheme.darktheme ,
      themeMode: ThemeMode.light,
    );
  }
}