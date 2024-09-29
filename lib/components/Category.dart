import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key, required this.color, required this.text, required this.ontap}) : super(key: key);
  
  final String text;
  final Color color;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: color,
        height: 70,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
