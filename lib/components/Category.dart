import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color, this.text, this.ontap});
  String? text;
  Color? color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: color,
        height: 70,
        width: double.infinity,
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
