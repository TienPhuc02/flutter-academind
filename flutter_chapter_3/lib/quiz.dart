import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/data/questions.dart';
import 'package:flutter_chapter_3/question_screen.dart';
import 'package:flutter_chapter_3/results_screen.dart';
import 'package:flutter_chapter_3/start_screen.dart';

class QuizClass extends StatefulWidget {
  const QuizClass({Key? key}) : super(key: key);
  @override
  State<QuizClass> createState() {
    return _QuizClassState();
  }
}

class _QuizClassState extends State<QuizClass> {
  List<String> _selectedAnswers = [];
  String activeScreen = "start-screen";
  void handleClickStartQuiz() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
  
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  void handleClickRestartQuiz() {
    setState(() {
      _selectedAnswers = [];
      activeScreen = "start-screen";
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = StartScreen(_selectedAnswers, handleClickStartQuiz);
    if (activeScreen == "question-screen") {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == "results-screen") {
      screenWidget = ResultsScreen(
          clickBackStartScreen: handleClickRestartQuiz,
          chosenAnswers: _selectedAnswers);
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
