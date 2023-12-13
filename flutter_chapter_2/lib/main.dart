import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: colors)
          ),
          child: Center(
            child: Text("hello World"),
          ),
        ), //widget -> layout
      ), //scaffold class,
    ),
  );
}
