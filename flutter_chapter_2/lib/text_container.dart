import "package:flutter/material.dart";

class TextContainer extends StatelessWidget {
  const TextContainer({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return const Text(
      "Hello World!!",
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
