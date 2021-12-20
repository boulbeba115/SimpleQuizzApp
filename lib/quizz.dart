import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quizz extends StatelessWidget {
  Function answerQuestion;
  int questionIndex;
  List<Map<String, Object>> questions;
  Quizz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
