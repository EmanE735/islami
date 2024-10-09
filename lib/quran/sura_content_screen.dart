import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/quran/quran_tab.dart';

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
   

   SurahContentArgs args= ModalRoute.of(context)!.settings.arguments as SurahContentArgs;
    loadSurahContent(args.fileName);
    return Container(
       decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg3.png"),
          fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.surahName), 
        ),
        body: Container(
         
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.symmetric(
            vertical:MediaQuery.sizeOf(context).height*0.07 ,
            horizontal: 24,
          ),
          decoration: BoxDecoration(
            color: AppTheme.white,
            borderRadius: BorderRadius.circular(25)
          ),
          child: ListView.builder(itemBuilder:(_,index)=> 
          surahContent.isEmpty?const Center(child: const CircularProgressIndicator()):
          Text(
           surahContent,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          itemCount: 1,
           ),
        ),

      
      ),
    );
  }
 Future <void> loadSurahContent (String fileName)async{
  surahContent = await rootBundle.loadString("assets/text/$fileName");
  setState(() {
    
  });
  }


}