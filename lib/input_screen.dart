import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SimpleCard(cardColor: Colors.green),
                ),
                Expanded(
                  flex: 1,
                  child: SimpleCard(cardColor: Colors.blue),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SimpleCard(cardColor: Colors.yellow),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SimpleCard(cardColor: Colors.blue),
                ),
                Expanded(
                  flex: 1,
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

class SimpleCard extends StatelessWidget {
  final Color cardColor;

  SimpleCard({required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color(0xFF1D1E33),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        //color: Color(0xFF1D1E33),
        color: cardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
