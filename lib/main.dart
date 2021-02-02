import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/tab_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/recipes_screen.dart';
import 'screens/filters_screen.dart';

import 'providers/categories_provider.dart';
import 'providers/favorates_provider.dart';
import 'providers/filters_provider.dart';
import 'providers/meals_provider.dart';

void main() {
  runApp(Meals());
}

class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => CategoriesProvider()),
        ChangeNotifierProvider(create: (ctx) => FavoratesProvider()),
        ChangeNotifierProvider(create: (ctx) => FiltersProvider()),
        ChangeNotifierProvider(create: (ctx) => MealsProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: TextTheme(
            bodyText2: TextStyle(
              fontFamily: 'Raleway',
            ),
            bodyText1: TextStyle(
              fontFamily: 'Raleway',
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        initialRoute: TabBarScreen.routeName,
        routes: {
          TabBarScreen.routeName: (ctx) => TabBarScreen(),
          CategoryMeals.routeName: (ctx) => CategoryMeals(),
          RecipesScreen.routeName: (ctx) => RecipesScreen(),
          Filters.routeName: (ctx) => Filters(),
        },
      ),
    );
  }
}
