import 'package:flutter/material.dart';

import '../widgets/category_grid.dart';
import '../widgets/category_card.dart';

import '../models/dummy_data.dart';

class Categories extends StatelessWidget {
  static const String routeName = '/';
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CatigoryGrid(
      children: getCategoryCards(dommyCategories),
    );
  }
}
