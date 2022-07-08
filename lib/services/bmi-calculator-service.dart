import 'dart:math';

import 'package:flutter/cupertino.dart';

class BmiCalculatorService {
  BmiCalculatorService({
    required this.heigth,
    required this.weight,
  });

  final int height;
  final int weight;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(heigth / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {}
}

enum BMI_STATES {
  UNDERWEIGHT(18.5, '', ''),
  NORMAL(18.5, '', ''),
  OVERWEIGHT(18.5, '', '');

  const BMI_STATES(this.upperLimit, this.value, this.feedback);
  final int upperLimit;
  final String value;
  final String feedback;
}
