import 'package:uuid/uuid.dart';

final uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense({
    required this.amount,
    required this.date,
    required this.title,
    required this.category,
  });

  final String id = uuid.v4();
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
