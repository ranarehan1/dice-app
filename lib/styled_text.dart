import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  final String ownText;
   const StyledText({required this.ownText, super.key});
  @override
  Widget build(context){
    return Text(
      ownText,
      style: TextStyle(
        color: Colors.white.withOpacity(0.8),
        fontSize: 25,
        fontStyle: FontStyle.italic
      ),
    );
  }
}