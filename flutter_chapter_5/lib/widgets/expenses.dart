import 'package:flutter/material.dart';
import 'package:flutter_chapter_5/widgets/chart/chart.dart';
import 'package:flutter_chapter_5/widgets/expeses_list/expenses_list.dart';
import 'package:flutter_chapter_5/models/expense.dart';
import 'package:flutter_chapter_5/widgets/new_expense.dart';

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
      amount: 10000,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: "Cinema",
      amount: 150000,
      category: Category.leisure,
      date: DateTime.now(),
    ),
    Expense(
      title: "Flutter Course",
      amount: 100000,
      category: Category.work,
      date: DateTime.now(),
    ),
  ];
  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: const Text("Chi Phí Đã Được Xóa"),
        action: SnackBarAction(
            label: "Hoàn Tác",
            onPressed: () {
              setState(() {
                _registeredExpenses.insert(expenseIndex, expense);
              });
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text("Hiện tại không có thông tin nào.Bắt đầu thêm thông tin"),
    );
    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
          expenses: _registeredExpenses, onRemoveExpense: _removeExpense);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trình theo dõi chi phí Flutter"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          Chart(expenses: _registeredExpenses),
          Expanded(
            child: mainContent,
          )
        ],
      ),
    );
  }
}
