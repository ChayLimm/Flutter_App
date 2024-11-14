import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            for (int i = 0; i < 10; i++)
              const Label("Method 1: Loop in Array", bold: true),

            // TODO
            const Label("\n\nMethod 2: Loop in Array", bold: false),
            ...colors.map((toELement) => Label("Method 2: $toELement", bold: false)),

            // TODO
            Label("\n\nMethod 3: Dedicated Function", bold: true),
            // TODo
            ...loopLabel().map((toElement) => toElement)
          ],
        ),
      ),
    );
  }
}

List<Label> loopLabel() {
  return colors
      .map((toELement) => Label("Method 3: $toELement", bold: true))
      .toList();
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: (bold ? FontWeight.bold : FontWeight.normal)),
    );
  }
}
