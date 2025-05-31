import 'package:flutter/widgets.dart';
import 'package:meals/components/meal_item.dart';
import 'package:meals/models/meal.dart';

class FavoriteCategoyPage extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoriteCategoyPage({super.key, required this.favoriteMeals});

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text('Sem refeições marcadas como favoritas'),
      );
    } else {
      return ListView.builder(
          itemCount: favoriteMeals.length,
          itemBuilder: (ctx, index) {
            return MealItem(favoriteMeals[index]);
          });
    }
  }
}
