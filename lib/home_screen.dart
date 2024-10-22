import 'package:flutter/material.dart';
import 'package:islami/generated/l10n.dart';
import 'package:islami/hadeth/hadith_tab.dart';
import 'package:islami/quran/quran_tab.dart';
import 'package:islami/radio/radio_tab.dart';
import 'package:islami/sebha/sebha_tab.dart';
import 'package:islami/settings/setting_provider.dart';
import 'package:islami/settings/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({super.key});
  static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex=0;
  List <Widget> tabs =[
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/${Provider.of<SettingsProvider>(context).backgroundImageName}.png"),
          fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).islami),
        ),
        body: tabs[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index){
            currentindex =index;
            setState(() {
              
            });
          
            },
            
          
       
          items: [
            BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/quran.png")
          ),
          label: (S.of(context).quran),
          ),
             BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/quransvg.png")
          ),
          label:  (S.of(context).hadeth),
          ),
             BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/sebha.png")
          ),
          label: (S.of(context).sebha),
          ),
               BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/radio.png")
          ),
          label:  (S.of(context).radio),
          ),
                  BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label:  (S.of(context).settings),
          ),
         
          
          
          ]),
        
         
      ),
    );
  }
}