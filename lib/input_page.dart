import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'GenderWidget.dart';
import 'ReusableCard.dart';
import 'constants.dart';

enum EGender {
  MALE,
  FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  EGender selectedGender = EGender.MALE;
  int currentHeight = 180;

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
              color: selectedGender == EGender.MALE
                  ? kActiveCardColor
                  : kInactiveCardColor,
              onTapFun: () {
                setState(() {
                  selectedGender = EGender.MALE;
                });
              },
              cardChild: GenderWidget(
                genderIcon: FontAwesomeIcons.mars,
                widgetText: 'MALE',
                textStyle: selectedGender == EGender.MALE
                    ? kTextStyleTextActive
                    : kTextStyleText,
              ),
            ),
            ReusableCard(
              color: selectedGender == EGender.FEMALE
                  ? kActiveCardColor
                  : kInactiveCardColor,
              onTapFun: () {
                setState(() {
                  selectedGender = EGender.FEMALE;
                });
              },
              cardChild: GenderWidget(
                genderIcon: FontAwesomeIcons.venus,
                widgetText: 'FEMALE',
                textStyle: selectedGender == EGender.FEMALE
                    ? kTextStyleTextActive
                    : kTextStyleText,
              ),
            ),
          ]),
        ),
        Expanded(
          child: Row(children: [
            ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT'),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        currentHeight.toString(),
                        style: kTextStyleNumber,
                      ),
                      Text(
                        'cm',
                        style: kTextStyleText,
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: kBottomContainerColor,
                    value: currentHeight.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        currentHeight = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),
        Expanded(
          child: Row(children: [
            ReusableCard(color: kActiveCardColor),
            ReusableCard(color: kActiveCardColor),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          height: kBottomContainerHeight,
          width: double.infinity,
          color: kBottomContainerColor,
        ),
      ]),
    );
  }
}
