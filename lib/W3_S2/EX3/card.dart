import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


Widget card(String title, Color? color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color.fromARGB(255, 159, 211, 254),
            color ?? Color.fromARGB(255, 159, 211, 254)
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Center(
        child: GradientText(
          title,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w500
          ),
          gradientType: GradientType.linear,
          radius: 2.5,
          colors: [
            Colors.blue,
            const Color.fromARGB(255, 255, 87, 87),
          ],
        ),
      ),
    );
  }