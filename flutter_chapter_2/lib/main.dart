import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: GradientContainer(), //widget -> layout
      ), //scaffold class,
    ),
  );
}

class GradientContainer extends StatelessWidget {
  @override // đơn giản là thêm chức năng vào hàm build của StatelessWidget
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          "Hello World!!",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
