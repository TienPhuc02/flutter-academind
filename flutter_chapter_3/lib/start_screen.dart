import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/text_class.dart';

void handleClickStartQuiz() {
  print("hello world");
}

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return Container(
      constraints: const BoxConstraints
          .expand(), // Mở rộng Container để fill toàn bộ không gian của body
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(255, 96, 7, 112),
              Color.fromARGB(255, 201, 86, 221)
            ]),
      ),
      child: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 250.0,
            ),
            const SizedBox(
              height: 50,
            ),
            TextClass(
              text: "Learn Flutter the fun Way!",
              styleText: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: handleClickStartQuiz,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: TextClass(
                text: "Start Quizz",
              ),
            )
          ],
        ),
      ),
    );
  }
}
