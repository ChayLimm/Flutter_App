import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Center(
        child: Container(
          padding: EdgeInsets.all(40),
          margin: EdgeInsets.all(50),
          color: Colors.blue[300],
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue[600],
            ),
            child: Center(
              child: Text("CADT STUDENTS",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500
              ),)
            ),
          ),
        ),
      ),
    );
  }
}
