import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.iconData, @required this.onTap});

  final IconData iconData;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      fillColor: Colors.grey[700],
      onPressed: onTap,
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}