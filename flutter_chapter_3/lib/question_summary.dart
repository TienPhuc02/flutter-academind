import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary({Key? key, this.summaryData}) : super(key: key);
  List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((item) {
        return Row(
          children: [Text(((item["question"] as int) + 1).toString())],
        );
      }).toList(),
    );
  }
}
