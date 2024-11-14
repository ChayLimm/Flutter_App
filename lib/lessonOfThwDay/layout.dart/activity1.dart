import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 100),
          Container(color: Colors.blue, height: 400),
          Container(
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.pink[300],
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      height: 100,
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            color: Colors.pink[300],
          ))
        ],
      ),
    );
  }
}
