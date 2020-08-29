import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({this.answerQuestion, this.questionIndex, this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
                children: <Widget>[
                  Question(questions[questionIndex]['questionText']),
                  ...(questions[questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(
                        selectHandler: answerQuestion, answerText: answer);
                  }).toList()
                ],
              );
  }
}