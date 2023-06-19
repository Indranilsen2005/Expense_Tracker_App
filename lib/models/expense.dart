import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, leisure, travel, work }

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
}
