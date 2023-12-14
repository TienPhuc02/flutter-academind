import 'package:flutter/material.dart';
import "package:flutter_chapter_3/text_class.dart";

class QuizClass extends StatefulWidget {
  const QuizClass({Key? key}) : super(key: key);
  @override
  State<QuizClass> createState() {
    return _QuizClassState();
  }
}

void handleClickStartQuiz() {
  print("hello world");
}

class _QuizClassState extends State<QuizClass> {
  @override
  Widget build(context) {
    return Container(
      // constraints: const BoxConstraints
      //     .expand(), // Mở rộng Container để fill toàn bộ không gian của body
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(255, 96, 7, 112),
              Color.fromARGB(255, 201, 86, 221)
            ]),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300.0,
            color: Color.fromARGB(174, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.4,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 250.0,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: TextClass(
              text: "Learn Flutter the fun Way!",
              styleText: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton.icon(
            onPressed: handleClickStartQuiz,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: TextClass(
              text: "Start Quizz",
            ),
          )
        ],
      ),
    );
  }
}
