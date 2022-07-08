import 'package:bmi_calculator/widgets/NumericValueCard.dart';
import 'package:flutter/material.dart';

import 'RoundedIconButton.dart';

class NumericValueStepperCard extends StatelessWidget {
  final int currentValue;
  final String title;
  final String unit;
  final Function() addFn;
  final Function() subtractFn;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NumericValueCard(title: title, unit: unit, currentValue: currentValue),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundIconButton(
              iconData: Icons.remove,
              onTap: subtractFn,
            ),
            RoundIconButton(
              iconData: Icons.add,
              onTap: addFn,
            ),
          ],
        )
      ],
    );
  }

  NumericValueStepperCard({
    this.unit = '',
    required this.currentValue,
    required this.title,
    required this.addFn,
    required this.subtractFn,
  });
}
