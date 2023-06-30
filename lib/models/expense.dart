import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

final formatter = DateFormat.yMd();

enum Category { food, leisure, travel, work }

const categoryIcon = {
  Category.food: Icons.fastfood_rounded,
  Category.travel: Icons.flight,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.date,
    required this.price,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double price;
  final DateTime date;
  final Category category;

  String getFormattedDate() {
    return formatter.format(date);
  }
}

class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpenseAmount {
    double sum = 0.0;
    for (final expense in expenses) {
      sum += expense.price;
    }

    return sum;
  }
}
