import 'dart:math';

import 'package:flutter/material.dart';

class Calculate {
  int? height;
  int? weight;
  int? age;

  Calculate({this.age, this.height, this.weight});

  late double bmi;

  String calculateBmi() {
    bmi = weight! / pow(height! / 100, 2);
    return bmi.toStringAsFixed(0);
  }

  String getResult() {
    if (bmi >= 25) {
      return "Overweight";
    } else if (bmi > 18.5) {
      return "normal";
    } else {
      return "Underweight";
    }
  }

  String getAdvice() {
    if (bmi >= 25) {
      return "You have a higher than normal body weight ; please eat less";
    } else if (bmi > 18.5) {
      return "You have a  normal body weight , Good Job and carry on";
    } else {
      return "You have a lower than normal body weight ; please eat more";
    }
  }
}
