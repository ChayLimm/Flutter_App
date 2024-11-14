import 'package:flutter/material.dart';
import 'package:lesson/W5_S2/EXERCISE-4/data.dart';
import 'package:lesson/W5_S2/EXERCISE-4/model.dart';

Color appColor = Colors.green[300] as Color;

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(child:  Column(
      children: [
       ...jokeList.map((item)=>FavoriteCard(title: item.title, discription: item.discription))
      ],
    ),)
    );
  }
}

class FavoriteCard extends StatefulWidget {
  final String title;
  final String discription;
  const FavoriteCard(
      {super.key, required this.title, required this.discription});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool _isFavorite = false;

  void onFavoriteClick() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          
          child: ListTile(
            title: Text(widget.title),
            subtitle: Text(widget.discription),
                trailing: IconButton(
            onPressed: onFavoriteClick,
            icon: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border,
              color: _isFavorite ? Colors.red : Colors.grey,
            )),
              ),
        ));
  }
}
