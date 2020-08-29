import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/result.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    {
      'questionText': 'What is your favourite color?',
      'answers': ['Red', 'Blue', 'Purple', 'Yellow']
    },
    {
      'questionText': 'What is your favourite Game?',
      'answers': ['Cricket', 'Hockey', 'Basket Ball', 'Football']
    },
    {
      'questionText': 'Which is your favourite Fruit?',
      'answers': ['Mango', 'Banana', 'Apple', 'Orange']
    },
    {
      'questionText': 'What is your Hobby?',
      'answers': ['Travelling', 'Games', 'Exercise', 'Reading']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('Quizzy'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
