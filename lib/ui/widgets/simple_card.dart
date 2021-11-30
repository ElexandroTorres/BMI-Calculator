import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  final Color cardColor;
  final Widget? cardChild;
  final VoidCallback? onPress;

  SimpleCard({required this.cardColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
