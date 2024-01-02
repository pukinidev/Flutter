import 'package:expensesapp/widgets/expenses_list/expenses_list.dart';
import 'package:expensesapp/models/expense.dart';
import 'package:expensesapp/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Expense 1',
        amount: 3,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Expense 2',
        amount: 9.3,
        date: DateTime.now(),
        category: Category.work),
  ];

  void _openAddExpense() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter ExpenseTracker',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: _openAddExpense,
            icon: const Icon(Icons.add),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 69, 27, 78),
        actionsIconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
