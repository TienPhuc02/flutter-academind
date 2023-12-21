import "package:flutter/material.dart";
import "package:flutter_chapter_5/models/expense.dart";
import 'package:intl/intl.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({Key? key, required this.expense}) : super(key: key);
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                // Text('\đ ${expense.amount.toStringAsFixed(3)}'),
                Text(
                    '\đ ${NumberFormat("#,##0.###", "en_US").format(expense.amount)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formatedDate)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
