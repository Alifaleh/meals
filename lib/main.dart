import 'package:flutter/material.dart';
import 'package:meals/screens/category_meals_screen.dart';

import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/recipes_screen.dart';

void main() {
  runApp(Meals());
}

class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      initialRoute: Categories.routeName,
      routes: {
        Categories.routeName: (ctx) => Categories(),
        CategoryMeals.routeName: (ctx) => CategoryMeals(),
        RecipesScreen.routeName: (ctx) => RecipesScreen(),
      },
    );
  }
}
