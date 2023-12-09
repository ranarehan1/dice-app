import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{

  var currentDiceRoll = 2;

  void rollDice(){

    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }
  @override
  Widget build(context) {
   return Column(
     mainAxisSize: MainAxisSize.min,
     children: [
       Image.asset(
         "assets/dice_images/dice-$currentDiceRoll.png",
         width: 200,
         height: 200,
       ),
       const SizedBox(
         height: 20,
       ),
       TextButton(
         onPressed: rollDice,
         child: const  StyledText(ownText: "Roll Dice"),
       ),
     ],
   );
  }

}