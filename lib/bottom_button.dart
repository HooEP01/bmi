import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final void Function() onTap;

  BottomButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Color(0xFFEB1555),
      //TODO: 9. Wrap the Center widget with GestureDetector to receive onTap gesture
      //TODO: 10. The onTap gesture will navigate to the ResultPage() using the Navigator.push()
      //TODO: 13. The Navigator will push some value to the ResultPage()
      //TODO: 14. Create a BMI Calculator class to calculate BMI value, display BMI category and display some words of encouragement
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}