import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.data});

  final List<Map<String, Object>> data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: data.map((data) {
        return Row(
          children: [
            Text(
              ((data['question_index'] as int) + 1).toString(),
            ),
            Column(
              children: [
                Text(data['question'] as String),
                const SizedBox(
                  height: 5,
                ),
                Text(data['user_answer'] as String),
                Text(data['correct_answer'] as String),
              ],
            ),
          ],
        );
      }).toList(),
    );
  }
}
