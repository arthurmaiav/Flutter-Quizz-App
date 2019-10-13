import 'package:flutter/material.dart';

import './question.dart';
import './button.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          return Button(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}