import 'package:flutter/material.dart';

@immutable
class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
