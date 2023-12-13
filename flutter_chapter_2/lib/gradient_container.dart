import "package:flutter/material.dart";
import "package:flutter_chapter_2/text_container.dart";

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key}) : super(key: key);
  @override // đơn giản là thêm chức năng vào hàm build của StatelessWidget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: const [Colors.blue, Colors.green],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(child: TextContainer()),
    );
  }
}
