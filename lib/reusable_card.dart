import 'package:flutter/material.dart';

const Color ActiveCardColor = Color(0xFF1D1E33);

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Box 1'),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: ActiveCardColor,
      ),
    );
  }
}