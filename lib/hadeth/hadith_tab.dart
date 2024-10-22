import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/generated/l10n.dart';

import 'package:islami/hadeth/hadeth.dart';
import 'package:islami/hadeth/hadeth_content_screen.dart';
import 'package:islami/settings/setting_provider.dart';
import 'package:provider/provider.dart';

class HadethTab extends StatefulWidget {
 
 
  

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
    List <Hadeth>ahadeth =[];
 

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
   if(ahadeth.isEmpty){
     loadHadethFile();
   }
     return Column(
      children: [
        Image.asset("assets/images/hadith_header-1.png"),
         Divider(
                thickness: 4.0,
                color:settingsProvider.isDark ? AppTheme.gold: AppTheme.lightprimary,
              ),
              Text(S.of(context).hadiths,
                style: Theme.of(context).textTheme.headlineSmall
              ),
                Divider(
                thickness: 4.0,
                color:settingsProvider.isDark ? AppTheme.gold: AppTheme.lightprimary,
              ),
              Expanded(
                child:
                ahadeth.isEmpty? Center(child:  CircularProgressIndicator(
                  backgroundColor: Theme.of(context).primaryColor,
                  color:Theme.of(context).primaryColor 
                                )):
                 ListView.separated(
                  itemBuilder:(_,index)=> GestureDetector(
                   
                    onTap: ()=>Navigator.of(context).pushNamed(
                      HadethContentScreen.routeName,
                      arguments: ahadeth[index]
                    ),
                    child: Text(
                     
                      ahadeth[index].title,
                     style: Theme.of(context).textTheme.headlineSmall,textAlign: TextAlign.center,
                    )

                    
                  ),
                    separatorBuilder: (_, index) => SizedBox(height: 12), 
                   itemCount: ahadeth.length),
              )



      ],
     );
  }

Future<void> loadHadethFile () async {
    String ahadethFileContent =  await rootBundle.loadString("assets/text/ahadeth.txt");
    List<String> ahadethStrings = ahadethFileContent.split("#");
    ahadeth = ahadethStrings.map((hadethString) {
    List<String> ahadeth = hadethString.trim().split("\r\n");
    String title = ahadeth[0];
    ahadeth.removeAt(0);
    List<String> content = ahadeth;
    return Hadeth( title,content);
    }).toList();
    setState(() {});
  }
}
