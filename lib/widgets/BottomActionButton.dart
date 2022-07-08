import 'package:flutter/material.dart';

import '../constants.dart';

class BottomActionButton extends StatelessWidget {
  BottomActionButton(this.text, this.onPress);

  final String text;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: kBottomContainerHeight,
      width: double.infinity,
      color: kBottomContainerColor,
      child: TextButton(
        child: Text(
          text,
          style: kTextStyleButton,
        ),
        onPressed: onPress,
      ),
    );
  }
}
