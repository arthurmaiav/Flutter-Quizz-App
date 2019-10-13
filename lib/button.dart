import 'package:flutter/material.dart';

class Button extends StatelessWidget {
final Function chooseAnswer;
final String answerText;

Button(this.chooseAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[400],
        textColor: Colors.white,
            child: Text(answerText),
            onPressed: chooseAnswer,
          ),
    );
  }
}