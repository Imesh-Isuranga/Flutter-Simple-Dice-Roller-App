import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerSatate();
  }
}

class _DiceRollerSatate extends State<DiceRoller>{
  var activeDiceRollerImage = 'assets/dice-images/dice-1.png';

  void rollDice(){
    var diceRoll = Random().nextInt(6)+1;

    setState(() {
      activeDiceRollerImage = 'assets/dice-images/dice-$diceRoll.png';
    });
  }


  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceRollerImage,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 22),
              ),
              child: const Text("Roll Dice"),
            ),
          ],
        );
  }
}