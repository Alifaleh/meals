import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/meal.dart';

import '../widgets/meal_card.dart';

import '../providers/favorates_provider.dart';

class Favorate extends StatefulWidget {
  @override
  _CategoryMealsState createState() => _CategoryMealsState();
}

class _CategoryMealsState extends State<Favorate> {
  bool firstBuild = false;
  List<Meal> meals;
  @override
  void initState() {
    firstBuild = true;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (firstBuild) {
      final favoratesProvider = Provider.of<FavoratesProvider>(context);
      meals = favoratesProvider.getFavorates();
      firstBuild = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(15),
      itemBuilder: (ctx, index) {
        return MealCard(id: meals[index].id);
      },
      itemCount: meals.length,
    );
  }
}
