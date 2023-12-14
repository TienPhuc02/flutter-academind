import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void handleClickStartQuiz() {
  print("hello world");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        body: Container(
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
                const Text(
                  "Learn Flutter the fun Way!",
                  style: TextStyle(color: Colors.white, fontSize: 25),
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
                  child: const Text(
                    "Start Quizz",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
