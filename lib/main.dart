// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'quizz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Tortule', 'score': 3},
        {'text': 'Lion', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite phone maker',
      'answers': [
        {'text': 'Samsung', 'score': 10},
        {'text': 'Apple', 'score': 5},
        {'text': 'Xiaomi', 'score': 3},
        {'text': 'LG', 'score': 1},
      ]
    },
  ];
  void _answerQuestion(int score) {
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
        _totalScore += score;
      }
    });
  }

  void _resetQuizz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quizz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore, _resetQuizz),
      ),
    );
  }
}
