import 'package:flutter/material.dart';
import 'package:rollerdice_app/gradient_Container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradientContainer(
        gradcolors: const [
          Color.fromARGB(255, 61, 2, 2),
          Color.fromARGB(255, 27, 0, 95),
        ],
      )),
    ),
  );
}
