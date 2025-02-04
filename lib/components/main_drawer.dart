import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _createItem(IconData icon, String label) {
      return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          label,
          style: const TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      );
    }

    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          color: Theme.of(context).secondaryHeaderColor,
          alignment: Alignment.bottomRight,
          child: Text(
            'Vamos cozinhar',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor),
          ),
        ),
        const SizedBox(height: 20),
        _createItem(Icons.restaurant, 'Refeições'),
        _createItem(Icons.settings, 'Configurações'),
      ]),
    );
  }
}
