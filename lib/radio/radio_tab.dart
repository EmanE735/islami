import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        Expanded(child: SizedBox()),
        Expanded(child: Image.asset("assets/images/pic_radio.png")),

        Expanded(
          child: Text("اذاعة القران الكريم",
          style: Theme.of(context).textTheme.headlineSmall,
          ),

          
        ),

        Row(
          children: [
            Expanded(child: IconButton(onPressed: (){}, icon:Icon(Icons.skip_previous,size: 40,color: Theme.of(context).primaryColor,))),
             Expanded(child: IconButton(onPressed: (){}, icon:Icon(Icons.play_arrow,size: 40,color: Theme.of(context).primaryColor,))),
              Expanded(child: IconButton(onPressed: (){}, icon:Icon(Icons.skip_next,size: 40,color: Theme.of(context).primaryColor,))),
          ],
        ),
        Expanded(child: SizedBox())
      ],
     );
     
    
  }
  }
