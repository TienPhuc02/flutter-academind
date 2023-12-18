import 'package:flutter/material.dart';
import 'package:flutter_chapter_5/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({Key? key, required this.expenses}) : super(key: key);
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (cxt, index) => Text(expenses[index].title),
    );
  }
}
