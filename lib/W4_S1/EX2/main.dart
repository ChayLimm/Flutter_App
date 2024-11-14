import 'package:flutter/material.dart';

enum Product { dart, flutter, firebase }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProductCard(title:  "Dart",description:  "the best programming language",image:Product.dart),
            ProductCard(title:  "Flutter",description:  "the best framework ",image:Product.flutter),
            ProductCard(title:  "Firebase",description:  "the best backend ",image:Product.firebase),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final Product image;
  ProductCard({super.key, required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    // print(image.name);
    return Card(     
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image.asset('assets/images/${image.name}.png',width: 50,height: 50,),
          Text(title,style: const TextStyle(
            fontSize: 28
          )),
          Text(description)
        ],
             ),
      ),
    );
  }
}
