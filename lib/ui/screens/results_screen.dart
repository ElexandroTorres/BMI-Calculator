import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  Map bmiData = {};
  @override
  Widget build(BuildContext context) {
    bmiData = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Altura: ${bmiData['height']}'),
            Text('Peso: ${bmiData['weight']}'),
            Text('Sexo: ${bmiData['gender']}')
          ],
        ),
      ),
    );
  }
}
