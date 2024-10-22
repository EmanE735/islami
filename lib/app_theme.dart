import 'package:flutter/material.dart';

class AppTheme{
  static const Color lightprimary = Color(0xFFB7935F);
   static const Color darkprimary = Color(0xFF141A2E);
    static const Color white = Color(0xFFF8F8F8);
     static const Color black = Color(0xFF242424);
      static const Color gold = Color(0xFFFACC1D);
  static ThemeData lighttheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize:30.0 ,
        color: black,
        fontWeight:FontWeight.bold 
      )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightprimary,
   bottomNavigationBarTheme:BottomNavigationBarThemeData (
    type: BottomNavigationBarType.fixed,
    backgroundColor: lightprimary,
    selectedItemColor: black,
    unselectedItemColor: white
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: black
      ),
      titleLarge: TextStyle(
          fontSize: 20,
        fontWeight: FontWeight.w400,
        color: black

      )
    )
  );
  static ThemeData darktheme = ThemeData(
     appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor:Colors.transparent ,
      foregroundColor: white,
      titleTextStyle: TextStyle(
        fontSize:30.0 ,
        color: white,
        fontWeight:FontWeight.bold 
      )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: darkprimary,
   bottomNavigationBarTheme:BottomNavigationBarThemeData (
    type: BottomNavigationBarType.fixed,
    backgroundColor:darkprimary ,
    selectedItemColor: gold,
    unselectedItemColor: white
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: white
      ),
      titleLarge: TextStyle(
          fontSize: 20,
        fontWeight: FontWeight.w400,
        color: gold

      )
    )
  );
}