import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Card(price: 100)),
    );
  }
}

class Card extends StatefulWidget {
  bool discount;
  double price;
  String? title;
  Card({super.key,required this.price,this.discount=false});
  

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {

  double discountBy(double percent){
    return widget.price - (widget.price * (percent / 100));
  }
  
  void trigger_discount(){
    setState(() {
      widget.discount = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String newTitle = widget.discount ? "Discount!" : "No Discount!";
    final double newPrice = widget.discount ?  discountBy(25): widget.price;
    return Container(
      height: 270,
      width: 380,
      decoration: BoxDecoration(
        color: widget.discount ? Colors.pink : const Color.fromARGB(255, 47, 47, 47),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          caption("\$${newPrice}"),
          caption("${newTitle}"),
          SizedBox(height: 10,),
          Discountbutton(trigger: trigger_discount),
        ],
      ),
    );
  }

  Text caption(String title){
    return  Text(title,style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          );
  }
}

class Discountbutton extends StatelessWidget {
  VoidCallback trigger;
  Discountbutton({super.key, required this.trigger});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: trigger, 
     style: TextButton.styleFrom(
      backgroundColor: Colors.black,
                side: BorderSide(color: Colors.white),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 12,
                ),
              ),
    child: Text("Apply Discount")
    );
  }
}