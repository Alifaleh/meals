import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../models/dummy_data.dart';

import '../widgets/meal_card.dart';

class CategoryMeals extends StatelessWidget {
  static const String routeName = '/CategoryMeals';
  @override
  Widget build(BuildContext context) {
    var passedData =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    String id = passedData['id'];
    String title = passedData['title'];

    List<Meal> meals = dummyMeals.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      key: ValueKey(id),
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(15),
        itemBuilder: (ctx, index) {
          return MealCard(id: meals[index].id);
        },
        itemCount: meals.length,
      ),
    );
  }
}
