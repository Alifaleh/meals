import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealsProvider with ChangeNotifier {
  List<Meal> _meals;
  Meal _currentMeal;

  setMeals(List<Meal> meals) {
    _meals = [...meals];
  }

  List<Meal> getMeals() {
    return [..._meals];
  }

  Meal getCurrentMeal() {
    return _currentMeal;
  }

  setCurrentMeal(Meal meal) {
    _currentMeal = meal;
  }
}
