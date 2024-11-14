import 'package:flutter/material.dart';
import 'package:lesson/W4_S3/challenge/slider.dart';

class MyHomePage extends StatelessWidget {
  
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.grey],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTemperature()
            ],
          )),
    );
  }
}

