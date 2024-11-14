import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  final VoidCallback trigger;
  const ButtonNext({super.key, required this.trigger});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: trigger, 
      icon: Icon(Icons.arrow_right_outlined)
      );
  }
}
class ButtonPrevious extends StatelessWidget {
  final VoidCallback trigger;
  const ButtonPrevious({super.key, required this.trigger});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: trigger, 
      icon: Icon(Icons.arrow_left_outlined)
      );
  }
}