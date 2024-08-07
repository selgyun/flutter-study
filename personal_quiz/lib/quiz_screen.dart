import 'package:flutter/material.dart';
import 'package:personal_quiz/question_list.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({
    super.key,
    required this.answerPressed,
    required this.questionIndex,
  });

  final int questionIndex;
  final Function answerPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Text(questionList[questionIndex]["questionText"]),
          const SizedBox(
            height: 150,
          ),
          ElevatedButton(
            onPressed: () => answerPressed(questionList[questionIndex]["answers"][0]["score"]),
            child: Text(questionList[questionIndex]["answers"][0]["text"]),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(questionList[questionIndex]["answers"][1]["score"]),
            child: Text(questionList[questionIndex]["answers"][1]["text"]),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(questionList[questionIndex]["answers"][2]["score"]),
            child: Text(questionList[questionIndex]["answers"][2]["text"]),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(questionList[questionIndex]["answers"][3]["score"]),
            child: Text(questionList[questionIndex]["answers"][3]["text"]),
          ),
        ],
      ),
    );
  }
}
