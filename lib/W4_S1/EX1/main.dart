import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffBBBBBB),
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            HobbyCard(icon:  Icon(Icons.travel_explore,color: Colors.white,) ,title:  "Travelling",color:  Colors.green),
            SizedBox(height: 10,),
            HobbyCard(icon:  Icon(Icons.skateboarding,color: Colors.white,) ,title:  "Skating"),
        ],),
      ),
    );
  }

 
}

class HobbyCard extends StatelessWidget {
  final Icon icon;
  final String title; 
  final Color color;
  HobbyCard({super.key,required this.icon,required this.title, this.color = Colors.blue});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      
      
      child: Container(
        decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
        child: ListTile(
          leading: icon,
          title: Text(title,style:const TextStyle(
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}