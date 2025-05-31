import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/pages/categories_page.dart';
import 'package:meals/pages/favorite_category_page.dart';

class TabsPage extends StatefulWidget {
  final List<Meal> favoriteMeals;
  const TabsPage({super.key, required this.favoriteMeals});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedPageIndex = 0;
  late List<Map<String, Object>> _pages;
  @override
  void initState() {
    super.initState();
    _pages = [
      {'component': const CategoriesPage(), 'title': 'Lista de categorias'},
      {
        'component': FavoriteCategoyPage(favoriteMeals: widget.favoriteMeals),
        'title': 'Meus favoritos'
      },
    ];
  }

  _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedPageIndex]['title'] as String),
        ),
        drawer: const MainDrawer(),
        body: _pages[_selectedPageIndex]['component'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).secondaryHeaderColor,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const Icon(Icons.category),
                label: 'Categorias'),
            BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              label: 'Favoritos',
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ],
        ));
  }
}
