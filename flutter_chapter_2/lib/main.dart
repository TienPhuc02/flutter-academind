import "package:flutter/material.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text("hello World"),
        ), //widget -> layout
      ), //scaffold class,
    ),
  );
}
