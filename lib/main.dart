import 'package:bmi_calculator/ui/screens/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ui/screens/input_screen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputScreen(),
        '/result': (context) => ResultScreen()
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
              backgroundColor: Color(0xFF0A0E21),
            ),
      ),
    );
  }
}
