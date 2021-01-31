import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/category_meals_screen.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  const CategoryCard({this.title, this.color, this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.of(context).pushNamed(CategoryMeals.routeName, arguments: {
          'id': this.id,
          'title': this.title,
        });
      },
      child: Container(
        key: ValueKey(id),
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

List<CategoryCard> getCategoryCards(List<Category> categories) {
  return categories.map((category) {
    return CategoryCard(
      title: category.title,
      color: category.color,
      id: category.id,
    );
  }).toList();
}
