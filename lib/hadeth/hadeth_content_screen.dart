import 'package:flutter/material.dart';

import 'package:islami/app_theme.dart';
import 'package:islami/hadeth/hadeth.dart';
import 'package:islami/settings/setting_provider.dart';
import 'package:provider/provider.dart';
import 'package:islami/generated/l10n.dart';


// ignore: must_be_immutable
class HadethContentScreen extends StatefulWidget {
  //const SuraContentScreen({super.key});

 
  static const String routeName = '/hadeth-content';

  @override
  State<HadethContentScreen> createState() => _SuraContentScreenState();
}


class _SuraContentScreenState extends State<HadethContentScreen> {
   String hadethContent="";
  @override
 
  Widget build(BuildContext context) {
     SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
   

   Hadeth args= ModalRoute.of(context)!.settings.arguments as Hadeth;
   
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
            title: Text( S.of(context).islami,), 
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
                Text(args.title, style: Theme.of(context).textTheme.titleLarge,),
                  Divider(
                thickness: 2.0,
                color:  settingsProvider.isDark ? AppTheme.gold: AppTheme.lightprimary,
              ), 
                Expanded(
                  child: ListView.builder(itemBuilder:(_,index)=> 
                                
                                Text(
                                 args.content[index],
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                                ),
                                itemCount: args.content.length,
                                ),
                ),
              ]
            
            ),
            ),
          ),
      
        
        );
    
    
  }



}