//TODO 11. Design the ResultPage() to have a Column (Text, ReusableCard, BottomButton)
//TODO 12. The ResultPage need to be able to receive value from InputPage()
//TODO 15. The ReusableCard is going to display the values received
//TODO 16. The BottomButton is going to navigate back to the InputPage using the Navigator.pop()

import 'package:bmi/bottom_button.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(child: Text('YOUR RESULT', style: kTitleStyle)),
            Expanded(
              child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('BMI Category'),
                      Text('20.0', style: kNumberStyle),
                      Text('Some words of encouragement here'),
                    ],
                  ),
                  cardColor: kActiveCardColor),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
