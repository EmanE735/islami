import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

// ignore: must_be_immutable
class SuraContentScreen extends StatelessWidget {
  //const SuraContentScreen({super.key});
  static const String routeName = '/sura-content';

  List <String> ayat = [
   " بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ ",
"الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
" الرَّحْمَنِ الرَّحِيم",
" مَالِكِ يَوْمِ الدِّينِ",
" إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ",
" اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ",
" صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّين",
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
          title: Text("الفاتحه"), 
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
          child: ListView.builder(itemBuilder:(_,index)=> Text(
            ayat[index],
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          itemCount: ayat.length,
           ),
        ),

      
      ),
    );
  }
}