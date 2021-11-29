import 'package:bmi_calculator/results_screen.dart';
import 'package:flutter/material.dart';
import 'input_screen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputScreen(),
        '/result': (context) => ResultScreen()
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      /*
      ThemeData(
        colorScheme: ColorScheme.light(
          primary: Color(0xFF0A0E21),
          secondary: Colors.blue,
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      */
    );
  }
}
