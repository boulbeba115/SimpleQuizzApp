// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function()? resetQuizz;
  Result(this.resultScore, this.resetQuizz);

  String get getResult {
    var resultText = 'You did it !';
    if (resultScore <= 8) {
      resultText = 'You are innoncent and Awesome !';
    } else if (resultScore <= 13) {
      resultText = 'Pretty Likeable !';
    } else if (resultScore <= 15) {
      resultText = 'You are ... Strange !';
    } else {
      resultText = 'You are Bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getResult,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuizz,
            child: Text('Restart'),
            color: Colors.green,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
