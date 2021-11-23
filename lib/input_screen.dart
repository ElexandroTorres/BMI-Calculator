import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/simple_card.dart';
import 'constants.dart';

enum Gender { MALE, FEMALE }

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SimpleCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    cardColor: selectedGender == Gender.MALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      contentIcon: FontAwesomeIcons.mars,
                      contentText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: SimpleCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    //cardColor: femaleCardColor,
                    cardColor: selectedGender == Gender.FEMALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      contentIcon: FontAwesomeIcons.venus,
                      contentText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SimpleCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                children: [
                  Text('Height'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SimpleCard(cardColor: Colors.blue),
                ),
                Expanded(
                  child: SimpleCard(cardColor: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
