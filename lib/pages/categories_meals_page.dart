import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMealsPage extends StatelessWidget {
  final Category category;
  const CategoriesMealsPage(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(child: Text('Receitas por Categoria ${category.id}')),
    );
  }
}
