import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardChild: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      Text('MALE'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardChild: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 80.0,
                      ),
                      Text('FEMALE'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Text(''),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardChild: Text(''),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardChild: Text(''),
                ),
              ),
            ],
          ),
          Container(
            height: 80.0,
            color: Color(0xFFEB1555),
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
