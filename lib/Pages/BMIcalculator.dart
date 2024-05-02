import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {

  //Inputs necessary for body mass index
  //The height that the user needs to input in meters
  int height = 0;
  //The weight that the user needs to input in kilograms
  int weight = 0;
  //The age of the user
  int age = 0;

  //BMI = weight / height^2

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }
}
