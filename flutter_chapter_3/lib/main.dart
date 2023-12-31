import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/quiz.dart';

void main() {
  runApp(const MyApp());
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
        body: const QuizClass(),
      ),
    );
  }
}
