import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonName;
  final VoidCallback selectHandler;
  const Answer(this.buttonName,this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 40, right: 40),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(
            alignment: const Alignment(0, 0),
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
        child: Text(buttonName),
      ),
    );
  }
}
