import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      date: DateTime.now(),
      price: 399.99,
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      date: DateTime.now(),
      price: 250.00,
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('Chart of expenses'),
          Text('List of expenses'),
        ],
      ),
    );
  }
}
