import 'package:flutter/material.dart';
import 'package:untitled69/result.dart';

import './questions.dart';
import './Answer.dart';
import './quiz.dart';

//void main (){
//runApp(MyApp());
//}
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what is your favorite color ?',
      'answer': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'Green', 'score': 8},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'what \'s your favorite pet  ?',
      'answer': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Lion', 'score': 4}
      ],
    },
    {
      'questionText': 'what \'s your favorite instractor  ?',
      'answer': [
        {'text': 'youtoub', 'score': 9},
        {'text': 'Nabile', 'score': 8},
        {'text': 'Nadhem', 'score': 7},
        {'text': 'jiji', 'score': 10}
      ],
    },
  ];
  var _questionindex = 0;
  var _totaleScore = 0;

  void _answerquestions(int score) {
    // if (_questionindex < _questions.length) {}
    _totaleScore += score;
    print(score);
    setState(() {
      _questionindex++;
    });
    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                questions: _questions,
                questionindex: _questionindex,
                answerquestions: _answerquestions,
              )
            : Result(_totaleScore),
      ),
    );
  }
}
