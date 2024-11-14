import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disable }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomerButton(title: "Submit", icon: Icon(Icons.check)),
          CustomerButton(
            title: "Time",
            icon: Icon(Icons.timer),
            onLeft: false,
            type: ButtonType.secondary,
          ),
          CustomerButton(
              title: "Account",
              icon: Icon(Icons.account_circle),
              type: ButtonType.disable)
        ],
      ),
    );
  }
}

class CustomerButton extends StatelessWidget {
  final String title;
  final Icon icon;
  final bool onLeft;
  final ButtonType? type;
  late Color color;
  CustomerButton(
      {super.key,
      required this.title,
      this.onLeft = true,
      this.type,
      required this.icon}) {
    switch (type) {
      case ButtonType.disable:
        color = Colors.grey;
        break;
      case ButtonType.secondary:
        color = Colors.green;
        break;
      default:
        color = Colors.blue;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (onLeft) Icon(icon.icon, size: 24, color: Colors.white),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
          if (!onLeft) Icon(icon.icon, size: 24, color: Colors.white)
        ],
      ),
    );
  }
}
