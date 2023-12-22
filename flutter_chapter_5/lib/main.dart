import 'package:flutter/material.dart';
import 'package:flutter_chapter_5/widgets/expenses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(
            scaffoldBackgroundColor: Color.fromARGB(255, 91, 74, 138)),
        home: const Expenses());
  }
}
