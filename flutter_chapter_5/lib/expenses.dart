import 'package:flutter/material.dart';
import 'package:flutter_chapter_5/expenses_list.dart';
import 'package:flutter_chapter_5/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExpenState();
  }
}

class _ExpenState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Flutter Course",
      amount: 10,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: "Cinema",
      amount: 15,
      category: Category.leisure,
      date: DateTime.now(),
    ),
    Expense(
      title: "Flutter Course",
      amount: 10,
      category: Category.work,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("My App"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
