import 'package:flutter/material.dart';
import 'package:rollerdice_app/activediceroller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.gradcolors});

  List<Color> gradcolors;

  var activeImage = 'assets/dice-images/dice-1.png';


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradcolors,
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
