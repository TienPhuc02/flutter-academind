import "package:flutter/material.dart";

class TextContainer extends StatelessWidget {
  TextContainer(this.text, {Key? key}) : super(key: key);
  String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
