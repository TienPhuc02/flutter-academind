//ca 2 deu là statesulwidget
import 'package:flutter/material.dart';

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
          const Text("hello world"),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Answers1")),
          ElevatedButton(onPressed: () {}, child: const Text("Answers2")),
          ElevatedButton(onPressed: () {}, child: const Text("Answers3")),
          ElevatedButton(onPressed: () {}, child: const Text("Answers4")),
        ],
      ),
    );
  }
}
