import 'package:flutter/material.dart';
import '../quiz.dart';
import '../result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _scoreTotal = 0;

  void _restartQuiz(){
    setState(() {
      _questionIndex = 0;
      _scoreTotal = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _scoreTotal += score;
    });
  }
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color ?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Blue', 'score': 4},
        {'text': 'White', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'Yellow', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': [
        {'text': 'Tiger', 'score': 5},
        {'text': 'Dog', 'score': 4},
        {'text': 'Cat', 'score': 3},
        {'text': 'Fish', 'score': 2},
        {'text': 'Frog', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite food ?',
      'answers': [
        {'text': 'Noodle', 'score': 5},
        {'text': 'Fried Rice', 'score': 4},
        {'text': 'Chicken', 'score': 3}
      ],
    },
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(_scoreTotal, _restartQuiz)),
    );
  }
}
