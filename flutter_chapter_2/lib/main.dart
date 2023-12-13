import "package:flutter/material.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: GradientContainer(), //widget -> layout
      ), //scaffold class,
    ),
  );
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key}) : super(key: key);
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
/*
 const GradientContainer({Key? key}) : super(key: key); là một constructor được khai báo cho class GradientContainer. Constructor này chấp nhận một tham số có tên key (để xác định key của widget) và truyền giá trị của tham số này cho constructor của lớp cha (super(key: key))
 */
