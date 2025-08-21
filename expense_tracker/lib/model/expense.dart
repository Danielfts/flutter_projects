import 'package:uuid/uuid.dart';

final uuid = Uuid();

class Expense {
  Expense({
    required this.amount,
    required this.date,
    required this.title,
  });

  final String id = uuid.v4();
  final String title;
  final double amount;
  final DateTime date;
}
