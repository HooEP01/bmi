import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

// user-defined data type
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 150;
  int weight = 50;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              color: kTextColor,
                            ),
                          ),
                        ],
                      ),
                      cardColor: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveColor,
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                      print('Male was pressed');
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 80.0,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(color: kTextColor),
                          ),
                        ],
                      ),
                      cardColor: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveColor,
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                      print('Female was pressed');
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: kTextColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: TextStyle(color: kTextColor),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 250,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Colors.grey,
                    onChanged: (double newHeight) {
                      setState(() {
                        height = newHeight.round();
                      });
                    },
                  ),
                ],
              ),
              cardColor: kActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    //TODO: 5. Add a Column, which has children (Text, Text, Row (RoundIconButton, RoundIconButton))
                    //TODO: 6. The RoundIconButton will received gesture that is going to change the value of the weight
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(color: kTextColor),
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(),
                      ],
                    ),
                    cardColor: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    //TODO: 7. Add a Column, which has children (Text, Text, Row (RoundIconButton, RoundIconButton))
                    //TODO: 8. The RoundIconButton will received gesture that is going to change the value of the age
                    cardChild: Text(''),
                    cardColor: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            color: Color(0xFFEB1555),
            //TODO: 9. Wrap the Center widget with GestureDetector to receive onTap gesture
            //TODO: 10. The onTap gesture will navigate to the ResultPage() using the Navigator.push()
            //TODO: 13. The Navigator will push some value to the ResultPage()
            //TODO: 14. Create a BMI Calculator class to calculate BMI value, display BMI category and display some words of encouragement
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

//TODO: 4. Create a Stateless Widget for the Round Icon button using the following style
// RawMaterialButton(
// onPressed: onPress,
// child: Icon(icon),
// shape: CircleBorder(),
// fillColor: Color(0xFF4C4F5E),
// constraints: BoxConstraints.tightFor(
// width: 45.0,
// height: 45.0,
// ),
// );
