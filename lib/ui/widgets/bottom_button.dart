import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  BottomButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(
          text,
          style: kNumberTextStyle,
          textAlign: TextAlign.center,
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 5.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
