import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/question_screen.dart';

import 'package:flutter_chapter_3/start_screen.dart';

class QuizClass extends StatefulWidget {
  const QuizClass({Key? key}) : super(key: key);
  @override
  State<QuizClass> createState() {
    return _QuizClassState();
  }
}

class _QuizClassState extends State<QuizClass> {
  // late Widget? activeScreen;
  String activeScreen = "start-screen";
  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(
  //       handleClickStartQuiz); // Initialize activeScreen in initState
  // }

  void handleClickStartQuiz() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(handleClickStartQuiz);
    if (activeScreen == "question-screen") {
      screenWidget = const QuestionScreen();
    }
 
    return Container(
   
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(255, 96, 7, 112),
              Color.fromARGB(255, 201, 86, 221)
            ]),
      ),
      child: screenWidget,
    );
  }
}
