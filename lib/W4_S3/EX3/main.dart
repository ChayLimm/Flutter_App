import 'package:flutter/material.dart';
import 'package:lesson/W4_S3/EX3/button.dart';

enum WeatherCondition {
  sunny("assets/images/sunny.png"),
  rainy("assets/images/rainy.png"),
  cloudy("assets/images/cloudy.png"),
  snowy("assets/images/snowy.png");

  final String weatherPath;

  const WeatherCondition(this.weatherPath);
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int state = 0;

  void nextImage(){
    setState(() {
    state = (state - 1) % WeatherCondition.values.length;
    });
  }
   void previousImage(){
    setState(() {
    state = (state - 1) % WeatherCondition.values.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Slider"),
        actions: [ButtonPrevious(trigger: previousImage,),ButtonNext(trigger: nextImage,),],

      ),

      body: Center(child: Image.asset(WeatherCondition.values[state].weatherPath)),

    );
  }
}

