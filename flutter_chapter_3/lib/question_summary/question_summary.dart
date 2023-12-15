import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:flutter_chapter_3/question_summary/question_indentifer.dart";
import "package:flutter_chapter_3/question_summary/question_item.dart";

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(
      {Key? key, required this.summaryData, required this.compareData})
      : super(key: key);
  List<Map<String, Object>> summaryData;
  List<bool> compareData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 350,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(summaryData.length, (index) {
            final item = summaryData[index];
            final isCorrect = compareData[index];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionInditifer(isCorrect: isCorrect, item: item),
                QuestionItem(item: item),
              ],
            );
          }),
        ),
      ),
    );
  }
}
