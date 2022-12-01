import 'dart:math';

import 'package:flutter/foundation.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height});

  final int? height;
  final int? weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = (weight! / pow(height! / 100, 2))!;
    return _bmi.toStringAsFixed(1);
  }

  String getReasult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpertation() {
    if (_bmi > 25) {
      return 'You have a higher than narmal body weight. Try to do more exercise!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than the normal weight. You can eat a bit more!';
    }
  }
}
