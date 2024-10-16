import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/quran/quran_tab.dart';
import 'package:islami/settings/setting_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SuraContentScreen extends StatefulWidget {
  //const SuraContentScreen({super.key});

 
  static const String routeName = '/sura-content';

  @override
  State<SuraContentScreen> createState() => _SuraContentScreenState();
}


class _SuraContentScreenState extends State<SuraContentScreen> {
   String surahContent="";
  @override
 
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
   

   SurahContentArgs args= ModalRoute.of(context)!.settings.arguments as SurahContentArgs;
    loadSurahContent(args.fileName);
    return 
     Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/${settingsProvider.backgroundImageName}.png"),
            fit: BoxFit.fill
            )
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text("اسلامي"), 
          ),
          body: Container(
           
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.symmetric(
              vertical:MediaQuery.sizeOf(context).height*0.07 ,
              horizontal: 24,
            ),
            decoration: BoxDecoration(
              color: settingsProvider.isDark ? AppTheme.darkprimary: AppTheme.white,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Column(
              children:[ 
                Text(args.surahName, style: Theme.of(context).textTheme.titleLarge,),
                Divider(thickness: 2,color:Theme.of(context).primaryColor , ),
                Expanded(
                  child: ListView.builder(itemBuilder:(_,index)=> 
                                surahContent.isEmpty? Center(child:  CircularProgressIndicator(
                                    backgroundColor: Theme.of(context).primaryColor,
                                    color:Theme.of(context).primaryColor 
                                )):
                                Text(
                                 surahContent,
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                                ),
                                itemCount: 1,
                                ),
                ),
              ]
            
            ),
            ),
          ),
      
        
        );
    
    
  }
 Future <void> loadSurahContent (String fileName)async{
  surahContent = await rootBundle.loadString("assets/text/$fileName");
  surahContent.split("/r/n");
  setState(() {
    
  });
  }


}