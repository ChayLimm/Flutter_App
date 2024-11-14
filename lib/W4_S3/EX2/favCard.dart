import 'package:flutter/material.dart';

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;
  const FavoriteCard(
      {super.key, required this.title, required this.description});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}


class _FavoriteCardState extends State<FavoriteCard> {
  bool trigger = false;

  void _triggerFav() {
    setState(() {
      trigger = !trigger;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(widget.title),
      subtitle: Text(widget.description),
      trailing: IconButton(
        onPressed: _triggerFav,
        icon: Icon(Icons.favorite),
        color: trigger ? Colors.red : null,
      ),
    );
  }
}