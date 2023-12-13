import "package:flutter/material.dart";
import "package:flutter_chapter_2/text_container.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
void rollDice() {}

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/dice-1.png",
              width: 200.0,
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 30)),
              child: const Text(
                "Roll Dice",
              ))
        ],
      ),
    );
  }
}
