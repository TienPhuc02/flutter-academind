import "package:flutter/material.dart";
import "package:flutter_chapter_2/text_container.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key}) : super(key: key);
  @override // đơn giản là thêm chức năng vào hàm build của StatelessWidget
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: Center(child: TextContainer("Hello World!!")),
    );
  }
}
