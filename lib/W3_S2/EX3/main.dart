import 'package:flutter/material.dart';
import 'card.dart';

//i accidentally do EX4

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 200),
        color: Color(0xFFBBBBBB),
        child: Column(
          children: [
            card("OOP", Color.fromARGB(255, 159, 211, 254)),
            card("DART", Color.fromARGB(255, 93, 179, 248)),
            card("FLUTTER", Color.fromARGB(255, 255, 155, 244)),
          ],
        ),
      ),
    ));
  }
}
