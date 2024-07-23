import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.totalScore,
    required this.resetQuiz,
  });

  final int totalScore;
  final Function resetQuiz;

  @override
  Widget build(BuildContext context) {
    String resultMessage;

    if (totalScore <= 10) {
      resultMessage = "토끼";
    } else if (totalScore <= 14) {
      resultMessage = "강아지";
    } else if (totalScore <= 18) {
      resultMessage = "고양이";
    } else {
      resultMessage = "호랑이";
    }

    return Center(
        child: Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        Text(resultMessage),
        const SizedBox(
          height: 100,
        ),
        ElevatedButton(
          onPressed: () => resetQuiz(),
          child: const Text("reset quiz"),
        ),
      ],
    ));
  }
}
