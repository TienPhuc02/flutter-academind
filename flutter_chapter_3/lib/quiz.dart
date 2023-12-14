import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/question_screen.dart';
import 'package:flutter_chapter_3/start_screen.dart';
import "package:flutter_chapter_3/text_class.dart";

class QuizClass extends StatefulWidget {
  const QuizClass({Key? key}) : super(key: key);
  @override
  State<QuizClass> createState() {
    return _QuizClassState();
  }
}

class _QuizClassState extends State<QuizClass> {
  late Widget? activeScreen;
  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(
        handleClickStartQuiz); // Initialize activeScreen in initState
  }

  void handleClickStartQuiz() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
    print("hello world");
  }

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
      child: activeScreen,
    );
  }
}
