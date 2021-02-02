import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/meal.dart';
import '../models/dummy_data.dart';

import '../widgets/meal_card.dart';

import '../providers/categories_provider.dart';
import '../providers/filters_provider.dart';

class CategoryMeals extends StatefulWidget {
  static const String routeName = '/CategoryMeals';

  @override
  _CategoryMealsState createState() => _CategoryMealsState();
}

class _CategoryMealsState extends State<CategoryMeals> {
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
      final mealsProvider = Provider.of<CategoriesProvider>(context);
      final filtersProvider = Provider.of<FiltersProvider>(context);
      meals = dummyMeals.where((meal) {
        return meal.categories.contains(mealsProvider.getCurrentCategory().id);
      }).toList();
      if (!filtersProvider.isSet(Filter.isGlutenFree) &&
          !filtersProvider.isSet(Filter.isLactoseFree) &&
          !filtersProvider.isSet(Filter.isVegan) &&
          !filtersProvider.isSet(Filter.isVegetarian)) {
      } else {
        if (!filtersProvider.isSet(Filter.isGlutenFree)) {
          meals.removeWhere((meal) {
            return meal.isGlutenFree == true;
          });
        }
        if (!filtersProvider.isSet(Filter.isLactoseFree)) {
          meals.removeWhere((meal) {
            return meal.isLactoseFree == true;
          });
        }
        if (!filtersProvider.isSet(Filter.isVegan)) {
          meals.removeWhere((meal) {
            return meal.isVegan == true;
          });
        }
        if (!filtersProvider.isSet(Filter.isVegetarian)) {
          meals.removeWhere((meal) {
            return meal.isVegetarian == true;
          });
        }
      }

      firstBuild = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var passedData =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    String id = passedData['id'];
    String title = passedData['title'];
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
