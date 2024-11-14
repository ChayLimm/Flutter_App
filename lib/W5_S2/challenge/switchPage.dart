import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int page= 0;
  void trigger(){
    setState(() {
      page = (page + 1 ) % Page.values.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Page.values[page];
  }
}

class PageA extends StatefulWidget {
  VoidCallback trigger;
  PageA({super.key, required this.trigger});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
      child: InkWell(
        onTap: widget.trigger,
        child: Container(

          color: Colors.green,
          child: const Text("A"),
        ),
      ),
    ));
  
}}


class PageB extends StatefulWidget {
  VoidCallback trigger;
  PageB({super.key, required this.trigger});

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
      child: InkWell(
        onTap: widget.trigger,
        child: Container(

          color: Colors.red,
          child: const Text("B"),
        ),
      ),
    ));
  
}
}enum Page{
  pageA("PageA"),
  pageB("PageA"), 

  String pageState;

  Page(this.pageState);
}
