import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer({this.selectHandler, this.answerText});
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: RaisedButton(
        onPressed: selectHandler,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
      ),
    );
  }
}
