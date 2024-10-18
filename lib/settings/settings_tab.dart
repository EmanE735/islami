import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/settings/language.dart';
import 'package:islami/settings/setting_provider.dart';
import 'package:provider/provider.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  List<Language> languages =[
    Language(name:"English", code: "en"),
     Language(name:"العربيه", code: "ar"),

  ];

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "dark mode",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Switch(
                  value: settingsProvider.themeMode == ThemeMode.dark,
                 // activeColor:Theme.of(context).primaryColor,
                  onChanged: (isdark) {
                    settingsProvider.changeTheme(isdark ? ThemeMode.dark: ThemeMode.light);
                   // settingsProvider.getTheme();
                    //SharedPreferences.getInstance();
                  },
                  activeTrackColor: AppTheme.gold,
                 // thumbColor: ,
                  ),
            ],
          ),
          SizedBox(height: 8,),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "language",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<Language>(
                  value: languages.firstWhere((language) => 
                  language.code == settingsProvider.language,
                  ),
                  items:
                languages.map((language) =>
                DropdownMenuItem(
                  value: language,
                  child: Text(language.name,
                  style: Theme.of(context).textTheme.titleLarge,
                  ))
                 ).toList() ,
                 onChanged: (selectedLanguage){
                  if(selectedLanguage != null){
                    settingsProvider.changeLanguage(selectedLanguage.code);
                    settingsProvider.getLanguage();
                  }
                
                 },
                 borderRadius: BorderRadius.circular(20),
                 dropdownColor: settingsProvider.isDark ? AppTheme.darkprimary : AppTheme.white,

                 ),
              )
            
            ],
          ),
        ],
      ),
    );
  }
}
