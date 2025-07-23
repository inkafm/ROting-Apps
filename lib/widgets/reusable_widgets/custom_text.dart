import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    required this.text,
    this.weight,
  });

  String text;
  String? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 16.0,
        fontFamily: "Nunito",
        fontWeight: weight == 'bold' ? FontWeight.bold : FontWeight.normal,
        color: Colors.black,
      ),
    );
  }
}