import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:flutter_chapter_3/question_summary/question_indentifer.dart";

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
                QuestionInditifer(isCorrect: isCorrect ,item:item),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["question"] as String,
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        item["question_correct"] as String,
                        style: GoogleFonts.lato(
                            color: Color.fromARGB(255, 161, 255, 180),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        item["user_answer"] as String,
                        style: GoogleFonts.lato(
                            color: Color.fromARGB(255, 237, 124, 124),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
