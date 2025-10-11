import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_details.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.meals,
    this.title,
    required this.onToggleFavourite,
  });

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavourite;

  @override
  Widget build(BuildContext context) {
    void navigateToDetail(Meal meal) {
      Navigator.of(
        context,
      ).push(
        MaterialPageRoute(
          builder: (_) => MealDetails(
            meal: meal,
            onToggleFavourite: onToggleFavourite,
          ),
        ),
      );
    }

    var noDataText = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'There are no meals!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Try selecting a different category',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
    var mealList = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) => MealItem(
        meal: meals[index],
        navigateToDetail: navigateToDetail,
      ),
    );

    var body = meals.isNotEmpty ? mealList : noDataText;
    return title == null
        ? body
        : Scaffold(
            appBar: AppBar(
              title: Text(title!),
            ),
            body: body,
          );
  }
}
