import "package:flutter/material.dart";
import "package:flutter_chapter_2/gradient_container.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: GradientContainer.greenBlue(), //widget -> layout
      ), //scaffold class,
    ),
  );
}


/*
 const GradientContainer({Key? key}) : super(key: key); là một constructor được khai báo cho class GradientContainer. Constructor này chấp nhận một tham số có tên key (để xác định key của widget) và truyền giá trị của tham số này cho constructor của lớp cha (super(key: key))
 */
