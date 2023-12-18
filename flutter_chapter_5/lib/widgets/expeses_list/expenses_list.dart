import 'package:flutter/material.dart';
import 'package:flutter_chapter_5/models/expense.dart';
import 'package:flutter_chapter_5/widgets/expeses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({Key? key, required this.expenses}) : super(key: key);
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (cxt, index) => ExpenseItem(expense: expenses[index]),
    );
  }
}
