import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  GenderWidget(
      {required this.genderIcon,
      required this.widgetText,
      required this.textStyle});

  final IconData genderIcon;
  final String widgetText;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          widgetText,
          style: textStyle,
        ),
      ],
    );
  }
}
