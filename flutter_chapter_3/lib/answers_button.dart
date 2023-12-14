import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    Key? key,
    required this.answersText,
    required this.handleClickAnswer,
  }) : super(key: key);
  final String answersText;
  final void Function() handleClickAnswer;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: handleClickAnswer,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 4, 1, 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        answersText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
