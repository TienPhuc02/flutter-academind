//ca 2 deu là statesulwidget
import 'package:flutter/material.dart';
import "package:flutter_chapter_3/answers_button.dart";
import "package:flutter_chapter_3/data/questions.dart";

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                currentQuestion.text,
                style: const TextStyle(color: Colors.white, fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswer().map((item) {
              return AnswerButton(answersText: item, handleClickAnswer: () {});
            }),
            // AnswerButton(
            //     answersText: currentQuestion.answers[0],
            //     handleClickAnswer: () {}),
            // AnswerButton(
            //     answersText: currentQuestion.answers[1],
            //     handleClickAnswer: () {}),
            // AnswerButton(
            //     answersText: currentQuestion.answers[2],
            //     handleClickAnswer: () {}),
            // AnswerButton(
            //     answersText: currentQuestion.answers[3],
            //     handleClickAnswer: () {}),
          ],
        ),
      ),
    );
  }
}
