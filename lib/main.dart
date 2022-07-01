import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme(
          primary: Colors.blueGrey,
          onPrimary: Colors.red,
          secondary: Colors.purple,
          onError: Colors.green,
          background: Colors.white,
          error: Colors.pink,
          onSurface: Colors.white,
          onSecondary: Colors.white,
          surface: Color(0xFF0A0E21),
          onBackground: Colors.orange,
          brightness: Brightness.dark,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
