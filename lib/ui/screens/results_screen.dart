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
          children: [
            Text('Your Result'),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Acima do peso'),
                  Text('29.9'),
                  Text('Você está acima do peso blablabla'),
                ],
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
