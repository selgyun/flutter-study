import 'package:flutter/material.dart';
import 'package:personal_quiz/question_list.dart';
import 'package:personal_quiz/quiz_screen.dart';
import 'package:personal_quiz/result_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;

  void answerPressed(int score) {
    setState(() {
      questionIndex += 1;
    });
    totalScore += score;
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
    totalScore = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("나만의 퀴즈 앱"),
      ),
      body: (questionIndex < questionList.length)
          ? QuizScreen(
              answerPressed: answerPressed,
              questionIndex: questionIndex,
            )
          : ResultScreen(
              totalScore: totalScore,
              resetQuiz: resetQuiz,
            ),
    );
  }
}
