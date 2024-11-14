import 'package:flutter/material.dart';

class AddButtom extends StatelessWidget {
  IconData icon;
  VoidCallback trigger;

  AddButtom({super.key, required this.icon, required this.trigger});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: trigger,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        width: 140,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon,size: 22,color: Colors.white)
      ),
    );
  }
}
