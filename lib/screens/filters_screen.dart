import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/main_drawer.dart';

import '../providers/filters_provider.dart';

// final bool isGlutenFree;
// final bool isLactoseFree;
// final bool isVegan;
// final bool isVegetarian;

class Filters extends StatefulWidget {
  static const routeName = '/filters';
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    final filtersProvider = Provider.of<FiltersProvider>(context);
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            child: Center(
              child: Text('Filter your food'),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  onChanged: (val) {
                    filtersProvider.setfilters(Filter.isGlutenFree, val, true);
                  },
                  value: filtersProvider.isSet(Filter.isGlutenFree),
                  subtitle: Text('only Gluteen free meals'),
                  title: Text('Gluteen free'),
                ),
                SwitchListTile(
                  onChanged: (val) {
                    filtersProvider.setfilters(Filter.isLactoseFree, val, true);
                  },
                  value: filtersProvider.isSet(Filter.isLactoseFree),
                  subtitle: Text('only Lactose Free meals'),
                  title: Text('Lactose Free'),
                ),
                SwitchListTile(
                  onChanged: (val) {
                    filtersProvider.setfilters(Filter.isVegan, val, true);
                  },
                  value: filtersProvider.isSet(Filter.isVegan),
                  subtitle: Text('only Vegan meals'),
                  title: Text('Vegan'),
                ),
                SwitchListTile(
                  onChanged: (val) {
                    filtersProvider.setfilters(Filter.isVegetarian, val, true);
                  },
                  value: filtersProvider.isSet(Filter.isVegetarian),
                  subtitle: Text('only Vegetarian meals'),
                  title: Text('Vegetarian'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
