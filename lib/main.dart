import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  // void _answerQuestion() {
  //   setState(() {
  //     _questionIndex += 1;
  //   });
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = <String>[
      "What's your favourite food?",
      "What's you favourite movie?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hallo'),
          backgroundColor: Colors.black45,
          shadowColor: Colors.blue,
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          Answer('Button 1', () => setState(() => _questionIndex = 0)),
          Answer('Button 2', () => setState(() => _questionIndex = 1))
        ]),
      ),
    );
  }
}
