import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import 'package:meals/models/meal.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class CategoriesMealsPage extends StatelessWidget {
  const CategoriesMealsPage({super.key, required this.meals});
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    final categoriesMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
          itemCount: categoriesMeals.length,
          itemBuilder: (ctx, index) {
            return MealItem(categoriesMeals[index]);
          }),
    );
  }
}
