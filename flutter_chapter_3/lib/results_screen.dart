import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(
      {Key? key,
      required this.clickBackStartScreen,
      required this.chosenAnswers})
      : super(key: key);
  final void Function() clickBackStartScreen;
  List<String> chosenAnswers;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Bạn đã trả lời đúng X câu trong tổng Y câu",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal)),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "List Of Answer and Question....",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 40,
          ),
          TextButton.icon(
              icon: const Icon(Icons.subdirectory_arrow_left_sharp),
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 15)),
              onPressed: () {},
              label: const Text("Restart Quiz"))
        ],
      ),
    );
  }
}
