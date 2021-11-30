import 'dart:math';

class CalculateBMI {
  final int height;
  final int weight;

  String _bmiResult = '';
  double _bmi = 0;

  Map _bmiDescription = {
    'OVERWEIGHT': 'You have a higher than normal body weight!',
    'NORMAL': 'You have a normal body weight!',
    'UNDERWEIGHT': 'You have a lower than normal body Weight!'
  };

  CalculateBMI({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    if (_bmi >= 25) {
      _bmiResult = 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      _bmiResult = 'NORMAL';
    } else {
      _bmiResult = 'UNDERWEIGHT';
    }

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    return _bmiResult;
  }

  String getDescription() {
    return _bmiDescription[_bmiResult];
  }
}
