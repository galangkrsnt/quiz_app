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
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color ?',
      'answers': ['Black', 'Blue', 'White', 'Green', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': ['Tiger', 'Dog', 'Cat', 'Fish', 'Frog'],
    },
    {
      'questionText': 'What\'s your favourite food ?',
      'answers': ['Noodle', 'Fried Rice', 'Chicken'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(questions: _questions, questionIndex: _questionIndex,answerQuestion: _answerQuestion)
            : Result()
      ),
    );
  }
}
