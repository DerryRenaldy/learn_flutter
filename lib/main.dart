import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
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
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 2},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Lion', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Noodle', 'score': 7},
        {'text': 'MeatBall', 'score': 6},
        {'text': 'Spagheti', 'score': 8},
        {'text': 'Steak', 'score': 10}
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex += 1;
      });
    } else {
      setState(() {
        _questionIndex = _questions.length;
      });
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hallo'),
          backgroundColor: Colors.black45,
          shadowColor: Colors.blue,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            :  Result(_totalScore),
      ),
    );
  }
}
