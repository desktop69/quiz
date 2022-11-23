import 'package:flutter/material.dart';

import './questions.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;

  final  Function(int) answerquestions;

  Quiz(
      {required this.questions,
      required this.questionindex,
      required this.answerquestions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionindex]['questionText'] as String,
        ),
        ...(questions[questionindex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          //  int xanswer = answer['score'] as int ;
          return Answer(
              () => answerquestions( answer['score'] as int ) ,
              answer['text'] as String);
        }).toList()
      ],
    );
  }
}
