import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextClass extends StatelessWidget {
  TextClass({required this.text, Key? key, this.styleText}) : super(key: key);
  String text;
  TextStyle? styleText;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: styleText,
    );
  }
}
