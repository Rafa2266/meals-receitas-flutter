import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/models/settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var settings = Settings();
  @override
  Widget build(BuildContext context) {
    Widget _createSwitch(
        String title, String subtitle, bool value, Function(bool) onChanged) {
      return SwitchListTile.adaptive(
          title: Text(title),
          subtitle: Text(subtitle),
          value: value,
          onChanged: onChanged);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      body: Column(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Configurações',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Expanded(
            child: ListView(
          children: <Widget>[
            _createSwitch(
                'Sem Glútem',
                'Só exibe refeições sem glútem',
                settings.isGlutenFree,
                (value) => setState(() {
                      settings.isGlutenFree = value;
                    })),
            _createSwitch(
                'Sem Lactose',
                'Só exibe refeições sem lactose',
                settings.isLactoseFree,
                (value) => setState(() {
                      settings.isLactoseFree = value;
                    })),
            _createSwitch(
                'Vegano',
                'Só exibe refeições veganas',
                settings.isVegan,
                (value) => setState(() {
                      settings.isVegan = value;
                    })),
            _createSwitch(
                'Vegetariano',
                'Só exibe refeições vegetarianas',
                settings.isVegetarian,
                (value) => setState(() {
                      settings.isVegetarian = value;
                    })),
          ],
        ))
      ]),
    );
  }
}
