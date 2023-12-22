import 'package:flutter/material.dart';
import 'package:flutter_chapter_5/models/expense.dart';
import 'package:flutter_chapter_5/widgets/expeses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {Key? key, required this.expenses, required this.onRemoveExpense})
      : super(key: key);
  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (cxt, index) => Dismissible(
        key: ValueKey(
          expenses[index],
        ),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal,
          ),
        ),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        //direction có thể giúp bạn xác định hướng mà người dùng đã vuốt để xóa ExpenseItem. Bạn có thể sử dụng thông tin này để thực hiện các hành động khác tùy thuộc vào hướng vuốt.
        child: ExpenseItem(
          expense: expenses[index],
        ),
      ),
    );
  }
}
