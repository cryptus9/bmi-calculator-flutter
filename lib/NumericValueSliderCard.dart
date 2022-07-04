import 'package:flutter/material.dart';

import 'NumericValueCard.dart';
import 'constants.dart';


class NumericValueSliderCard extends StatelessWidget {
  NumericValueSliderCard(
      {@required this.currentValue,
        @required this.title,
        @required this.unit,
        @required this.onChange});

  final int currentValue;
  final String title;
  final String unit;
  final Function(double newValue) onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NumericValueCard(
            title: title, unit: unit, currentValue: currentValue),
        Slider(
          activeColor: kBottomContainerColor,
          value: currentValue.toDouble(),
          min: 120.0,
          max: 220.0,
          onChanged: onChange,
        ),
      ],
    );
  }
}