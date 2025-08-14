import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            style: TextStyle(color: Colors.white),
            currentQuestion.text,
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: currentQuestion.answers[0],
            onPressed: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[1],
            onPressed: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[2],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
