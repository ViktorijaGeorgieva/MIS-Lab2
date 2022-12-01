import 'package:flutter/material.dart';
import './obleka_question.dart';
import './obleka_answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
    print("I was tapped");
  }

  var questions = [
    {
      'question': "Избери облека за:",
      'answer': ['мажи', 'жени', 'деца']
    },
    {
      'question': "Избери вид на облека:",
      'answer': ['блузи', 'панталони', 'јакни', 'кошули']
    },
    {
      'question': "Избери големина:",
      'answer': ['XS', 'S', 'M', 'L', 'XL', 'XXL']
    },
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Облека',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Облека"),
              backgroundColor: Colors.green,
            ),
            body: Column(
              children: [
                OblekaQuestion(questions[_questionIndex]['question'] as String),
                ...(questions[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return OblekaAnswer(_iWasTapped, answer);
                }),
              ],
            )));
  }
}
