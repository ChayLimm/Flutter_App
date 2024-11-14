import 'package:flutter/material.dart';

enum Weather_condition {
  sunny,
  rainy,
  cloudy,
  snowy,
}

enum DayOfWeek { mon, tue, wed, thur, fri, sat, sun }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
            padding: EdgeInsets.all(10),
            color: Color(0xffBBBBBB),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                Card(
                  day: DayOfWeek.sun,
                  weather: Weather_condition.cloudy,
                  maxTemp: 30,
                  minTemp: 25,
                ),
                 Card(
                  day: DayOfWeek.mon,
                  weather: Weather_condition.sunny,
                  maxTemp: 35,
                  minTemp: 30,
                ),
                 Card(
                  day: DayOfWeek.tue,
                  weather: Weather_condition.rainy,
                  maxTemp: 25,
                  minTemp: 15,
                ),
                 Card(
                  day: DayOfWeek.wed,
                  weather: Weather_condition.snowy,
                  maxTemp: 0,
                  minTemp: -3,
                ),
                 Card(
                  day: DayOfWeek.thur,
                  weather: Weather_condition.sunny,
                  maxTemp: 30,
                  minTemp: 25,
                ),
                 Card(
                  day: DayOfWeek.fri,
                  weather: Weather_condition.cloudy,
                  maxTemp: 25,
                  minTemp: 20,
                ),
                 Card(
                  day: DayOfWeek.sat,
                  weather: Weather_condition.rainy,
                  maxTemp: 25,
                  minTemp: 20,
                ),
              ],
            )),
      )
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Weather_condition weather;
  final DayOfWeek day;
  final int minTemp;
  final int maxTemp;
  late String image;
  Card({
    super.key,
    required this.weather,
    required this.day,
    required this.minTemp,
    required this.maxTemp,
  }) {
    switch (weather) {
      case Weather_condition.rainy:
        image = "rainy";
        break;
      case Weather_condition.cloudy:
        image = "cloudy";
        break;
      case Weather_condition.snowy:
        image = "snowy";
        break;
      case Weather_condition.sunny:
        image = "sunny";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.all(10),
      height: 120,
      width: 88,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(day.name.toUpperCase(),style: TextStyle(fontWeight: FontWeight.w400)),
          Image.asset("assets/images/${image}.png",scale: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text("${maxTemp}°"),
             SizedBox(width: 4,),
             Text("${minTemp}°",style:TextStyle(
              color: Color(0xffBBBBBB)
             )),
          ],)
      ],),
    );
  }
}
