import "package:flutter/material.dart";
import 'package:provider/provider.dart';

import '../models/dummy_data.dart';
import '../models/meal.dart';

import '../providers/meals_provider.dart';
import '../providers/favorates_provider.dart';

import '../widgets/recipes_list.dart';

class RecipesScreen extends StatelessWidget {
  static const String routeName = '/CategoryMeal/recipes';
  @override
  Widget build(BuildContext context) {
    final mealsProvider = Provider.of<MealsProvider>(context);
    final favoratesProvider = Provider.of<FavoratesProvider>(context);
    Map<String, String> passedData = ModalRoute.of(context).settings.arguments;
    Meal meal = dummyMeals.where((meal) {
      return meal.id == passedData['id'];
    }).toList()[0];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: (favoratesProvider.getFavorates().contains(meal))
            ? Icon(Icons.star)
            : Icon(Icons.star_border),
        onPressed: () {
          (favoratesProvider.getFavorates().contains(meal))
              ? favoratesProvider.removeFavorate(mealsProvider.getCurrentMeal())
              : favoratesProvider.addFavorates(mealsProvider.getCurrentMeal());
        },
      ),
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
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
