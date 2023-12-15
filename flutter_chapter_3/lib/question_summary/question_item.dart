import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionItem extends StatelessWidget {
  QuestionItem({Key? key, required this.item}) : super(key: key);
  Map<String, Object> item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item["question"] as String,
            style: GoogleFonts.lato(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 5),
          Text(
            item["question_correct"] as String,
            style: GoogleFonts.lato(
                color: Color.fromARGB(255, 161, 255, 180),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const SizedBox(height: 5),
          Text(
            item["user_answer"] as String,
            style: GoogleFonts.lato(
                color: Color.fromARGB(255, 237, 124, 124),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ],
      ),
    );
  }
}
