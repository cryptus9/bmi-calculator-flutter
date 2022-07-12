import 'package:bmi_calculator/services/bmi-calculator-service.dart';
import 'package:bmi_calculator/widgets/BottomActionButton.dart';
import 'package:bmi_calculator/widgets/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    required this.bmiState,
    required this.bmi,
  });

  final BmiStates bmiState;
  final String bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Result'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ReusableCard(
            color: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  bmiState.value.toUpperCase(),
                  style: kTextStyleResult,
                ),
                Text(
                  bmi,
                  style: kTextStyleNumber,
                ),
                Text(
                  bmiState.feedback,
                  textAlign: TextAlign.center,
                  style: kTextStyleSummary,
                ),
              ],
            ),
          ),
          BottomActionButton('RE-CALCULATE', () {
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
