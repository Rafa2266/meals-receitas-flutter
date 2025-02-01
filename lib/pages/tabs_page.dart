import 'package:flutter/material.dart';
import 'package:meals/pages/categories_page.dart';
import 'package:meals/pages/favorite_category_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedPageIndex = 0;
  final List<Map<String, Object>> _pages = [
    {'component': CategoriesPage(), 'title': 'Lista de categorias'},
    {'component': FavoriteCategoyPage(), 'title': 'Meus favoritos'},
  ];
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
