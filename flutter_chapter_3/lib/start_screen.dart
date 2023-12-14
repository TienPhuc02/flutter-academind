import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/text_class.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.handleClickStartQuiz, {Key? key}) : super(key: key);

  final void Function() handleClickStartQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300.0,
            color: Color.fromARGB(174, 255, 255, 255),
          ),
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
