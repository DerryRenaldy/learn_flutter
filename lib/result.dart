import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  const Result({required this.resetQuiz, required this.totalScore, super.key});

  String get resultPhrase {
    var resultText = 'You dit it!';
    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (totalScore <= 16) {
      resultText = 'You are... strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Text(totalScore.toString(),
              style:
                  const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text('Restart Quiz!'),
          ),
        ]),
      ),
    );
  }
}
