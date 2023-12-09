import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  List<Color> myColors = const [
    Color(0xff1b0092),
    Color(0xff038888),
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          backgroundColor: myColors,
        ),
      ),
    ),
  );
}
