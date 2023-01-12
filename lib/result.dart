import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  const Result(this.totalScore, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: [
            const Text("You dit it!"), 
            Text(totalScore.toString())
          ]),
    );
  }
}
