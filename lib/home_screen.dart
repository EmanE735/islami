import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadith_tab.dart';
import 'package:islami/quran/quran_tab.dart';
import 'package:islami/radio/radio_tab.dart';
import 'package:islami/sebha/sebha_tab.dart';
import 'package:islami/settings/settings_tab.dart';

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
          image: AssetImage("assets/images/bg3.png"),
          fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
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
          label: "quran",
          ),
             BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/quransvg.png")
          ),
          label: "hadeth",
          ),
             BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/sebha.png")
          ),
          label: "sebha",
          ),
               BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/radio.png")
          ),
          label: "radio",
          ),
                  BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: "settings",
          ),
         
          
          
          ]),
        
         
      ),
    );
  }
}