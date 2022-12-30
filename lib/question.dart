import 'package:flutter/material.dart';

@immutable
class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 50, bottom: 40),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
