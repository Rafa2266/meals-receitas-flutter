import 'package:flutter/material.dart';
import 'package:meals/pages/categories_meals_page.dart';
import 'package:meals/pages/categories_page.dart';
import 'package:meals/pages/meal_detail_page.dart';
import 'package:meals/pages/settings_page.dart';
import 'package:meals/pages/tabs_page.dart';
import 'utils/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.amber),
          primaryColor: Colors.pink,
          secondaryHeaderColor: Colors.amber,
          fontFamily: 'Raleway',
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                  fontSize: 20, fontFamily: 'RobotoCondensed'))),
      /*  home: const CategoriesPage(), */
      routes: {
        AppRoutes.HOME: (ctx) => const TabsPage(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMealsPage(),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetailPage(),
        AppRoutes.SETTINGS: (ctx) => const SettingsPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) {
          return const CategoriesPage();
        });
      },
    );
  }
}
