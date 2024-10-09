import 'package:flutter/material.dart';

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
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(child: SizedBox()),
          Expanded(
            flex: 4,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: -35,
                    child: Image.asset("assets/images/head of seb7a.png")),
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
                      child: Image.asset("assets/images/body of seb7a.png"),
                    )),
              ],
            ),
          ),
          Expanded(
            child: Text(
              style: Theme.of(context).textTheme.headlineSmall,
              "عدد التسبيحات",
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                counter.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
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
