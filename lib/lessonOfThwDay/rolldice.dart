import 'dart:math';
import 'package:flutter/material.dart';

const String diceImage2 = 'assets/dice/dice-2.png';
const String diceImage4 = 'assets/dice/dice-4.png';
const String diceImage1 = 'assets/dice/dice-1.png';
const String diceImage3 = 'assets/dice/dice-3.png';
const String diceImage5 = 'assets/dice/dice-5.png';
const String diceImage6 = 'assets/dice/dice-6.png';

String activeDiceImage = diceImage2;

Random rand = new Random();

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  void rollDice() {
    int randomNumber = rand.nextInt(6);
    setState(() {
       switch(randomNumber){
        case 0: 
        activeDiceImage = diceImage1;
        break;
        case 1: 
        activeDiceImage = diceImage2;
        break;
        case 2: 
        activeDiceImage = diceImage3;
        break;
        case 3: 
        activeDiceImage = diceImage4;
        break;
        case 4: 
        activeDiceImage = diceImage5;
        break;
        case 5: 
        activeDiceImage = diceImage6;
        break;     
      }
    });
  }

  @override
  Widget build(context) {

   

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
        Colors.purple,
        Colors.blue
      ]),
     ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
                  
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
          )
        ],
      ),
    );
  }
}

