import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/data/questions.dart';
import "package:flutter_chapter_3/question_summary.dart";

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
        "question_index": 1,
        "question": questions[i].text,
        "question_correct": questions[i].answers[0],
        "user_answer": chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Bạn đã trả lời đúng X câu trong tổng Y câu",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal)),
          const SizedBox(
            height: 40,
          ),
          QuestionsSummary(summaryData: getSummaryData()),
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
