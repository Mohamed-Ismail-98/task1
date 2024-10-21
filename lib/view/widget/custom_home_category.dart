import 'package:flutter/material.dart';

class CustomHome extends StatelessWidget {
  const CustomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
      Container(
        margin: EdgeInsets.all(10),
        width: 150,
        height: 100,
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
            // image: NetworkImage("https://th.bing.com/th/id/OIP.UZLUoPRYCeQZ2HGsEZJ59AHaEK?w=218&h=122&c=7&o=5&pid=1.20"), fit: BoxFit.fill)),
            image: NetworkImage("https://picsum.photos/250/300"), fit: BoxFit.fill)),
        child: Container(
            alignment: Alignment.bottomCenter,
            child: const Text("Sports", style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15,color: Colors.black),)),
      );
    }
        );
  }
}
