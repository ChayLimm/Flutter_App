import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SelectButton(),
        SelectButton(),
        SelectButton(),
        SelectButton(),
      ],),
    );
  }
}

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool selected = false;
  

  void _onPressed(){
    print("pressing");
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 120,
      child: Center(
        child: ElevatedButton(
          onPressed: _onPressed, 
          style: ElevatedButton.styleFrom(
            backgroundColor: selected ? Colors.blue[500]:Colors.blue[50]
          ),
          child: Text(selected? "Selected" : "Not Selected",style: TextStyle(
            fontSize: 16,
            color: selected ? Colors.white : Colors.black
          ),)),
      ),
    );
  }
}