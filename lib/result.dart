import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restartQuiz;

  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    var resultText = 'You did it !';
    if (resultScore <= 10) {
      resultText = 'its okay !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            child:
            Text('Restart Quiz'),
            onPressed: restartQuiz, 
          ),
        ],
      ),
    );
  }
}
