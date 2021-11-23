import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/simple_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { MALE, FEMALE }

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

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
                        ? activeCardColor
                        : inactiveCardColor,
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
                        ? activeCardColor
                        : inactiveCardColor,
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
            child: Row(
              children: [
                Expanded(
                  child: SimpleCard(cardColor: Colors.yellow),
                ),
              ],
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
