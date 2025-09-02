import 'package:flutter/material.dart';
import 'package:quizzer/answer_button.dart';
import 'package:quizzer/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[1];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.questionText, style: TextStyle(color: Colors.white, fontSize: 24)),
          const SizedBox(height: 30),
          AnswerButton(currentQuestion.answers[0], () {}),
          AnswerButton(currentQuestion.answers[1], () {}),
          AnswerButton(currentQuestion.answers[2], () {}),
          AnswerButton(currentQuestion.answers[3], () {}),
        ],
      ),
    );
  }
}
