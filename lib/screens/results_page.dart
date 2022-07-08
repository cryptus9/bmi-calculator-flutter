import 'package:bmi_calculator/widgets/BottomActionButton.dart';
import 'package:bmi_calculator/widgets/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
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
                  'NORMAL',
                  style: kTextStyleResult,
                ),
                Text(
                  '19.2',
                  style: kTextStyleNumber,
                ),
                Text(
                  'You have a normal bodyy weight. Good job!',
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
