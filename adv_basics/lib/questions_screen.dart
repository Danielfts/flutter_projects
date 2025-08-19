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
  var currentQuestionsIndex = 0;

  answerQuestion() {
    setState(() {
      currentQuestionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionsIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              currentQuestion.text,
            ),
            SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map(
              (e) => AnswerButton(answerText: e, onPressed: answerQuestion),
            ),
          ],
        ),
      ),
    );
  }
}
