import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children:  [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),



        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              rollDice();
            },
            
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: const Color.fromARGB(255, 225, 255, 0),
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('Roll Dice'))
            
      ],
    );
  }
}
