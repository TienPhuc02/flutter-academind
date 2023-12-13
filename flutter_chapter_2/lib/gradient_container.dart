import "package:flutter/material.dart";
import "package:flutter_chapter_2/text_container.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key, required this.arrayColors})
      : super(key: key);
  final List<Color> arrayColors;
  @override // đơn giản là thêm chức năng vào hàm build của StatelessWidget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: arrayColors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(child: TextContainer("Hello World!!")),
    );
  }
}
