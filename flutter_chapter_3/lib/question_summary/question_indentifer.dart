import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionInditifer extends StatelessWidget {
  QuestionInditifer({Key? key, required this.isCorrect, required this.item})
      : super(key: key);
  bool isCorrect;
  Map<String, Object> item;
  @override
  Widget build(BuildContext context) {
    final color = isCorrect
        ? Color.fromARGB(255, 161, 255, 180) // Màu xanh cho câu trả lời đúng
        : Color.fromARGB(255, 237, 124, 124); // Màu đỏ cho câu trả lời sai
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 40,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Text(
        ((item["question_index"] as int) + 1).toString(), // Đã sửa ở đây
        style: GoogleFonts.lato(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
