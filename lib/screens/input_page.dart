import 'package:bmi_calculator/services/bmi-calculator-service.dart';
import 'package:bmi_calculator/widgets/NumericValueStepperCard.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/BottomActionButton.dart';
import '../widgets/GenderWidget.dart';
import '../widgets/NumericValueSliderCard.dart';
import '../widgets/ReusableCard.dart';
import '../constants.dart';

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
  int weight = 80;
  int age = 30;

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
                cardChild: NumericValueSliderCard(
                  currentValue: currentHeight,
                  title: 'HEIGHT',
                  unit: 'CM',
                  onChange: (double newValue) {
                    setState(() {
                      currentHeight = newValue.round();
                    });
                  },
                )),
          ]),
        ),
        Expanded(
          child: Row(children: [
            ReusableCard(
              color: kActiveCardColor,
              cardChild: NumericValueStepperCard(
                title: 'WEIGHT',
                unit: 'KG',
                currentValue: weight,
                addFn: () {
                  setState(() {
                    weight++;
                  });
                },
                subtractFn: () {
                  setState(() {
                    weight--;
                  });
                },
              ),
            ),
            ReusableCard(
              color: kActiveCardColor,
              cardChild: NumericValueStepperCard(
                title: 'AGE',
                currentValue: age,
                addFn: () {
                  setState(() {
                    age++;
                  });
                },
                subtractFn: () {
                  setState(() {
                    age--;
                  });
                },
              ),
            ),
          ]),
        ),
        BottomActionButton('CALCULATE', () {
          BmiCalculatorService calculatorService =
              BmiCalculatorService(height: currentHeight, weight: weight);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultsPage(
                bmi: calculatorService.calculateBmi(),
                bmiState: calculatorService.getFeedback(),
              ),
            ),
          );
        }),
      ]),
    );
  }
}
