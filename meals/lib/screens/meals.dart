import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  MealsScreen({super.key, required this.meals, required this.title});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    const whiteText = TextStyle(color: Colors.white);
    var noDataText = const Text(
      'There are no meals!',
      style: whiteText,
    );
    var mealList = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) {
        return Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              meals[index].title,
              style: whiteText,
            ),
          ),
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: meals.isNotEmpty ? mealList : noDataText,
    );
  }
}
