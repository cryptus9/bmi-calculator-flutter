import 'dart:math';

class BmiCalculatorService {
  BmiCalculatorService({
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  BmiStates getFeedback() {
    if (_bmi >= 25) {
      return BmiStates.OVERWEIGHT;
    } else if (_bmi > 18.5) {
      return BmiStates.NORMAL;
    }
    return BmiStates.UNDERWEIGHT;
  }
}

enum BmiStates {
  UNDERWEIGHT(
    'Underweight',
    'You have a lower BMI than normal. You can eat a bit more.',
  ),
  NORMAL(
    'Normal',
    'You have a normal body weight. Good Job!',
  ),
  OVERWEIGHT(
    'Overweight',
    'You have a higher BMI than normal. You can exercise more.',
  );

  const BmiStates(this.value, this.feedback);

  final String value;
  final String feedback;
}
