import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary({Key? key, required this.summaryData}) : super(key: key);
  List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((item) {
        return Row(
          children: [
            Text(
              ((item["question_index"] as int) + 1).toString(),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(item["question"] as String),
                  const SizedBox(height: 5),
                  Text(item["question_correct"] as String),
                  const SizedBox(height: 5),
                  Text(item["user_answer"] as String),
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
