import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/data/questions.dart';
import 'package:flutter_chapter_3/question_summary/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(
      {Key? key,
      required this.clickBackStartScreen,
      required this.chosenAnswers})
      : super(key: key);
  final void Function() clickBackStartScreen;
  List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < questions.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "question_correct": questions[i].answers[0],
        "user_answer": chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    print(numTotalQuestion);
    final numCorrectQuestion = summaryData.where((data) {
      return data["user_answer"] == data["question_correct"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Bạn đã trả lời đúng $numCorrectQuestion câu trong tổng $numTotalQuestion câu",
            style: GoogleFonts.lato(
                color: Color.fromARGB(255, 232, 147, 242),
                fontSize: 25,
                fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
            
          ),
          const SizedBox(
            height: 40,
          ),
          QuestionsSummary(summaryData: summaryData),
          const SizedBox(
            height: 40,
          ),
          TextButton.icon(
              icon: const Icon(Icons.subdirectory_arrow_left_sharp),
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 15)),
              onPressed: clickBackStartScreen,
              label: const Text("Restart Quiz"))
        ],
      ),
    );
  }
}
