import 'package:flutter/material.dart';
import 'reusable_card.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: ReusableCard(),
              ),
              Expanded(
                child: ReusableCard(),
              ),
            ],
          ),
          Expanded(
            child: ReusableCard(),
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(),
              ),
              Expanded(
                child: ReusableCard(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

