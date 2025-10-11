import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({
    super.key,
    required this.meal,
    required this.onToggleFavourite,
  });

  final Meal meal;
  final void Function(Meal meal) onToggleFavourite;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: () {
              onToggleFavourite(meal);
            },
            icon: Icon(Icons.star),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Ingredients',
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ...meal.ingredients.map(
              (i) => Text(
                i,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Steps',
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            ...meal.steps.map(
              (i) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 16,
                ),
                child: Text(
                  i,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
