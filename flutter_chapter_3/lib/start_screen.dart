import 'package:flutter/material.dart';
import 'package:flutter_chapter_3/text_class.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.selectedAnswers, this.handleClickStartQuiz, {Key? key})
      : super(key: key);
  List<String> selectedAnswers;
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
              styleText: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
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
              styleText: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
