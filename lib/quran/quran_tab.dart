//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:islami/constants.dart';
import 'package:islami/generated/l10n.dart';
import 'package:islami/quran/sura_content_screen.dart';
import 'package:islami/settings/setting_provider.dart';
import 'package:provider/provider.dart';
//import 'package:islami/quran/sura_content_screen.dart';
//import 'package:islami/quran/sura_content_screen.dart';
import 'package:islami/app_theme.dart';

// ignore: must_be_immutable
class QuranTab extends StatelessWidget {
  QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
      SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Column(children: [
      Image.asset(
        "assets/images/q_header-1.png",
        height: MediaQuery.sizeOf(context).height * 0.25,
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Divider(
                thickness: 4.0,
                color:  settingsProvider.isDark ? AppTheme.gold: AppTheme.lightprimary,
              ),
              
                   IntrinsicHeight(
                   child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        S.of(context).verses,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      )),
                       VerticalDivider(
                               thickness: 2.0,
                               color: settingsProvider.isDark ? AppTheme.gold: AppTheme.lightprimary,
                             ),
                      Expanded(
                          child: Text(
                      S.of(context).suraName,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ))
                    ],
                                   ),
                 ),
              
              Divider(
                thickness: 4.0,
                color: settingsProvider.isDark ? AppTheme.gold: AppTheme.lightprimary,
              ),
                 ],
          ),
          
       
             ],
          ),
        
      
      Expanded(
        child: ListView.separated(
          padding: EdgeInsets.only(top: 15),
          itemBuilder: (_, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, SuraContentScreen.routeName,
                  arguments: SurahContentArgs(
                      fileName: "${index + 1}.txt",
                      surahName: Constant.surahName[index]));
            }, 
             
             child:  IntrinsicHeight(
               child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      Constant.verses[index].toString(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    )),
                        VerticalDivider(
                                   thickness: 2.0,
                                   color: settingsProvider.isDark ? AppTheme.gold: AppTheme.lightprimary,
                                 ),
                    Expanded(
                        child: Text(
                      Constant.surahName[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    )),
                  ],
                ),
             ),
            ),
          
          itemCount: Constant.surahName.length,
          separatorBuilder: (_, index) => SizedBox(height: 12),
        ),
      )
    ]);
  }
}

class SurahContentArgs {
  String fileName;
  String surahName;
  SurahContentArgs({required this.fileName, required this.surahName});
}
