import "package:flutter/material.dart";

import '../models/dummy_data.dart';
import '../models/meal.dart';

import '../widgets/recipes_list.dart';

class RecipesScreen extends StatelessWidget {
  static const String routeName = '/CategoryMeal/recipes';
  @override
  Widget build(BuildContext context) {
    Map<String, String> passedData = ModalRoute.of(context).settings.arguments;
    Meal meal = dummyMeals.where((meal) {
      return meal.id == passedData['id'];
    }).toList()[0];
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(meal.imageUrl,
                width: double.infinity, height: 300, fit: BoxFit.cover),
            SizedBox(height: 50),
            Text(
              'Ingredients',
              style: Theme.of(context).textTheme.headline6,
            ),
            RecipesList(items: meal.ingredients),
            SizedBox(height: 50),
            Text(
              'Steps',
              style: Theme.of(context).textTheme.headline6,
            ),
            RecipesList(items: meal.steps),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
