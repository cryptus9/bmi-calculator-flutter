import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'GenderWidget.dart';
import 'ReusableCard.dart';

const cardColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Colors.red;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(children: [
            ReusableCard(
              color: cardColor,
              cardChild: GenderWidget(
                genderIcon: FontAwesomeIcons.mars,
                widgetText: 'MALE',
              ),
            ),
            ReusableCard(
              color: cardColor,
              cardChild: GenderWidget(
                genderIcon: FontAwesomeIcons.venus,
                widgetText: 'FEMALE',
              ),
            ),
          ]),
        ),
        Expanded(
          child: Row(children: [
            ReusableCard(color: cardColor),
          ]),
        ),
        Expanded(
          child: Row(children: [
            ReusableCard(color: cardColor),
            ReusableCard(color: cardColor),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          height: bottomContainerHeight,
          width: double.infinity,
          color: bottomContainerColor,
        ),
      ]),
    );
  }
}
