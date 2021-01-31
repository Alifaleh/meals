import 'package:flutter/material.dart';

class RecipesList extends StatelessWidget {
  final List<String> items;

  const RecipesList({
    Key key,
    @required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 300,
        child: ListView(
          children: items
              .map(
                (ingredient) => RecipesListItem(
                  ingredient: ingredient,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class RecipesListItem extends StatelessWidget {
  final String ingredient;
  const RecipesListItem({Key key, this.ingredient}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Center(
          child: Text(ingredient,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
