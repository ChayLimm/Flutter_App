import 'package:flutter/material.dart';
import  'package:lesson/W4_S3/EX2/favCard.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Header(),
          FavoriteCard(title: "Testing",description: "Testing decription",),
          FavoriteCard(title: "Car Ride",description: "late night driving around the city",),
          FavoriteCard(title: "Walk",description: "late night walk at the mall",),
        ],
      ),
    );
  }
}




class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: const ListTile(
        title: Center(
          child: Text(
            "Your favorite card",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
