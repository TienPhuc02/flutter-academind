import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 249, 118, 210),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    ((item["question_index"] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
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
          }).toList(),
        ),
      ),
    );
  }
}
