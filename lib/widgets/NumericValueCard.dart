import 'package:flutter/material.dart';

import '../constants.dart';

class NumericValueCard extends StatelessWidget {
  NumericValueCard(
      {required this.title, required this.unit, required this.currentValue});

  final String title;
  final String unit;
  final int currentValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: kTextStyleText,
        ),
        Row(
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              currentValue.toString(),
              style: kTextStyleNumber,
            ),
            Text(
              unit,
              style: kTextStyleText,
            ),
          ],
        ),
      ],
    );
  }
}
