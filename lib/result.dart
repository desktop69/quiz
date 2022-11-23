import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhase {
    String resulText;
    if (resultScore <= 8) {
      resulText = 'You are awesome an innocent ! ';
    } else if (resultScore <= 12) {
      resulText = ' you are likeable ! ';
    } else if (resultScore <= 16) {
      resulText = ' you are strage ? ! ';
    } else {
      resulText = 'you are so bad !!!! ';
    }
    return resulText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
