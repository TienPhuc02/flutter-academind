//ca 2 deu là statesulwidget
import 'package:flutter/material.dart';
import "package:flutter_chapter_3/answers_button.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Data Question....",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answersText: "Answer1", handleClickAnswer: () {}),
          AnswerButton(answersText: "Answer2", handleClickAnswer: () {}),
          AnswerButton(answersText: "Answer3", handleClickAnswer: () {}),
          AnswerButton(answersText: "Answer4", handleClickAnswer: () {}),
        ],
      ),
    );
  }
}
