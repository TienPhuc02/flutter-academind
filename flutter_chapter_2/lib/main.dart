import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blueAccent],
            ),
          ),
          child: const Center(
            child: Text("hello World"),
          ),
        ), //widget -> layout
      ), //scaffold class,
    ),
  );
}
