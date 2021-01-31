import "package:flutter/material.dart";

import '../models/dummy_data.dart';
import '../models/meal.dart';

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
      body: Container(),
    );
  }
}
