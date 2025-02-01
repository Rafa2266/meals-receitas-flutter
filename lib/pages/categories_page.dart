import 'package:flutter/material.dart';
import 'package:meals/components/category_item.dart';
import 'package:meals/data/dummy_data.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: dummyCategories.map((cat) {
            return CategoryItem(cat);
          }).toList()),
    );
  }
}
