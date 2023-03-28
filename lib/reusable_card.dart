import 'package:flutter/material.dart';

const Color ActiveCardColor = Color(0xFF1D1E33);

class ReusableCard extends StatelessWidget {
  final Widget cardChild;

  ReusableCard({required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: ActiveCardColor,
      ),
    );
  }
}