import "package:flutter/material.dart";
import "package:flutter_chapter_2/text_container.dart";
import "package:flutter_chapter_2/dive_roller.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> arrayColors;
  const GradientContainer({Key? key, required this.arrayColors})
      : super(key: key);
  // const GradientContainer({super.key, required this.arrayColors});
  // GradientContainer.greenBlue({super.key})
  //     : arrayColors = [Colors.blue, Colors.green];
  GradientContainer.greenBlue({Key? key})
      : arrayColors = [Colors.blue, Colors.green],
        super(key: key);

  @override // đơn giản là thêm chức năng vào hàm build của StatelessWidget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: arrayColors, begin: startAlignment, end: endAlignment),
      ),
      child: DiceRoller(),
    );
  }
}
