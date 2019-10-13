import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': ['Black', 'Blue', 'Green']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': ['Cat', 'Dog', 'Fish']
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answer': ['Die Hard', 'Hulk', 'Logan']
    }
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < _questions.length)
        _questionIndex = _questionIndex + 1;
      else
        _questionIndex = 0;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quizz App'),
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
