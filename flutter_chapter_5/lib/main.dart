import 'package:flutter/material.dart';
import 'package:flutter_chapter_5/widgets/expenses.dart';

void main() {
  runApp(const MyApp());
}

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(
          // scaffoldBackgroundColor: Color.fromARGB(255, 91, 74, 138),
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          ),
        ),
        home: const Expenses());
  }
}
