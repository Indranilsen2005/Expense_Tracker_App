import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({required this.expense, super.key});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '₹${expense.price.toStringAsFixed(2)}',
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcon[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.getFormattedDate()),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
