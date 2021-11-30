import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/ui/widgets/bottom_button.dart';

class ResultScreen extends StatelessWidget {
  Map bmiData = {};
  @override
  Widget build(BuildContext context) {
    bmiData = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: kActiveCardColor,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiData['result'],
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      bmiData['bmi'],
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      bmiData['description'],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w200,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              text: 'Re-Calculate',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
