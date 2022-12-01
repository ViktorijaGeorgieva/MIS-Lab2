import 'package:flutter/material.dart';

class OblekaAnswer extends StatelessWidget {
  String answerText;
  final VoidCallback tapped;
  OblekaAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        answerText,
        style: TextStyle(fontSize: 20, color: Colors.red),
      ),
      onPressed: tapped,
      style: ElevatedButton.styleFrom(primary: Colors.green),
    );
  }
}
