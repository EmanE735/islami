//import 'dart:js_util';

import 'package:flutter/material.dart';
//import 'package:islami/quran/sura_content_screen.dart';

// ignore: must_be_immutable
class QuranTab extends StatelessWidget {
  QuranTab({super.key});

  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/q_header-1.png",
          height: MediaQuery.sizeOf(context).height * 0.25,
        ),
        Stack(
          alignment: Alignment.center,
          children: [Column(
            children: [Divider(
              thickness: 4.0,
              color: Theme.of(context).primaryColor,
            ),
          
          Row( 
            
            children: [
              Expanded(child: Text("عدد الايات",textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
              )),
              Expanded(child: Text("اسم السوره",textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
              ))
          
            ],
          ),
          Divider( thickness: 4.0,
            color: Theme.of(context).primaryColor,),
          
            Row(
              children: [
                Expanded(child: Text("eman")),
                Expanded(child: Text("leen"))
              ],
            ),
                ],),
                VerticalDivider(thickness: 4.0,
                color: Theme.of(context).primaryColor,
                )
          ]
        ),

      ]
    );
    
         
       
        
      
    
  }
}






  //  Expanded(
  //                 child: ListView.separated(
  //                 padding: EdgeInsets.only(top: 15),
  //                 itemBuilder:(_,index)=>
  //                 InkWell(
  //         onTap: () => Navigator.of(context).pushNamed(SuraContentScreen.routeName),
  //         child: Text(
  //           style: Theme.of(context).textTheme.headlineSmall,
  //          // textAlign:TextAlign.center,
  //           suraNames[index]),
  //                 ) ,
  //                 itemCount: suraNames.length,
  //                 separatorBuilder: (_,index)=> SizedBox(height: 12),
  //                 ),
  //               )