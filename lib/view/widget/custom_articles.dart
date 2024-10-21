import 'package:flutter/material.dart';
class CustomArticles extends StatelessWidget {
  const CustomArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:  Column(
          children: [
            // Image.network(fit: BoxFit.fill,"https://th.bing.com/th/id/OIP.UZLUoPRYCeQZ2HGsEZJ59AHaEK?w=218&h=122&c=7&o=5&pid=1.20"),
            Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                image: DecorationImage(image: NetworkImage("https://picsum.photos/250/300"),fit: BoxFit.fill))),
            SizedBox(height: 4,),
            Text("Meta reportedly fires staffer on 400K a year for spending 25 meal credits on toothpaste and tea - Fortune",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 4,),
            Text(maxLines: 2,overflow: TextOverflow.ellipsis,"Meta employees on Blind claimed employees had been fired for spending in-office meal perks on groceries delivered to home.",style: TextStyle(fontSize: 14,color: Colors.grey,),),
            Text("2024-10-17",style: TextStyle(fontSize: 14,color: Colors.black,),)
          ],
        ),

    );
  }
}
