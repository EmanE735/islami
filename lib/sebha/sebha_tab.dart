import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/generated/l10n.dart';
import 'package:islami/settings/setting_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turns = 0;
  int counter = 0;
  String text = "سبحان الله";
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.07,),
          Expanded(
            flex: 2,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: -35,
                    child: Image.asset("assets/images/head of seb7a.png",
                    color: settingsProvider.isDark ? AppTheme.gold: AppTheme.lightprimary,
                    ),
                       
                    ),
                GestureDetector(
                    onTap: () {
                      turns++;
                      setState(() {
                        counter++;
                        switch (counter) {
                          case 33:
                            {
                              text = "الله اكبر";
                            }
                          case 66:
                            {
                              text = "الحمد لله";
                            }
                          case 99:
                            {
                              text = "لا اله الا الله";
                            }
                          case 132:
                            {
                              text = "لا حول ولاقوه الا بالله";
                            }
                        }
                      });
                    },
                    child: AnimatedRotation(
                      turns: turns,
                      duration: Duration(seconds: 1),
                      child: Image.asset("assets/images/body of seb7a.png",
                      color: settingsProvider.isDark ? AppTheme.gold: AppTheme.lightprimary,
                      ),
                    )),
              ],
            ),
          ),
          Text(
            style: Theme.of(context).textTheme.headlineSmall,
            S.of(context).praises,
          ),
          SizedBox(height: 20.0,),
          Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                counter.toString(),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color:
                 settingsProvider.isDark ? AppTheme.white: AppTheme.darkprimary,

                 ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: settingsProvider.isDark ? AppTheme.gold: AppTheme.lightprimary,
              borderRadius: BorderRadius.circular(20),
            ),
            child:
                Text(style: TextStyle(color: Colors.white, fontSize: 20), text),
          ),
          Expanded(child: SizedBox())
        ],
      ),
    );
  }
}
