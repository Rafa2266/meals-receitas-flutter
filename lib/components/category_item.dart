import 'package:meals/pages/categories_meals_page.dart';
import 'package:meals/utils/app_routes.dart';

import '../models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category, {super.key});

  void _selectCategory(BuildContext context) {
    /* Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return CategoriesMealsPage(category);
    })); */
    Navigator.of(context)
        .pushNamed(AppRoutes.CATEGORIES_MEALS, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.5),
              category.color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child:
            Text(category.title, style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}
