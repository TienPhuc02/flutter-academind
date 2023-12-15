import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/data/questions.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary({Key? key, required this.summaryData}) : super(key: key);
  List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((item) {
            return Row(
              children: [
                Text(
                  ((item["question_index"] as int) + 1).toString(),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
        ),
      ),
    );
  }
}
