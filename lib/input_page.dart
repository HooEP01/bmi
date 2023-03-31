import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color InactiveColor = Color(0xFF111328);
const Color ActiveCardColor = Color(0xFF1D1E33);

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
                          Text('MALE'),
                        ],
                      ),
                      cardColor: selectedGender == Gender.male
                          ? ActiveCardColor
                          : InactiveColor,
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
                          Text('FEMALE'),
                        ],
                      ),
                      cardColor: selectedGender == Gender.female
                          ? ActiveCardColor
                          : InactiveColor,
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
              //TODO: 1. Add a Column, which has children (Text, Row (Text, Text), Slider)
              //TODO: 2. To align according to baseline, set CrossAxisAlignment - baseline and TextBaseline - alphabetic
              //TODO: 3. The value of the Slider will be changed based on the onChanged() method
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('cm'),
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
              cardColor: ActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    //TODO: 5. Add a Column, which has children (Text, Text, Row (RoundIconButton, RoundIconButton))
                    //TODO: 6. The RoundIconButton will received gesture that is going to change the value of the weight
                    cardChild: Text(''),
                    cardColor: ActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    //TODO: 7. Add a Column, which has children (Text, Text, Row (RoundIconButton, RoundIconButton))
                    //TODO: 8. The RoundIconButton will received gesture that is going to change the value of the age
                    cardChild: Text(''),
                    cardColor: ActiveCardColor,
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
