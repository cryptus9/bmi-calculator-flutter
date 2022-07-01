import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  GenderWidget({@required this.genderIcon, @required this.widgetText});

  final IconData genderIcon;
  final String widgetText;

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
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
