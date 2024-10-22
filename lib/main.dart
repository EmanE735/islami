import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/hadeth/hadeth_content_screen.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/quran/sura_content_screen.dart';
import 'package:islami/settings/setting_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'generated/l10n.dart';


void main(

  ) =>
 
   runApp(ChangeNotifierProvider(
  create: (_)=> SettingsProvider(),
  
 
  child: IslamiApp()));

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
   SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    settingsProvider.getTheme();
     settingsProvider.getLanguage();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      routes: {
        HomeScreen.routeName:(_) => HomeScreen(),
        SuraContentScreen.routeName:(_)=>SuraContentScreen(),
         HadethContentScreen.routeName:(_)=>HadethContentScreen(),
      },
      initialRoute:HomeScreen.routeName ,
      theme: AppTheme.lighttheme,
      darkTheme:AppTheme.darktheme ,
      themeMode: settingsProvider.themeMode,

   localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Locale(settingsProvider.language),
    );
  }
}