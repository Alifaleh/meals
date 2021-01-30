import 'package:flutter/material.dart';

import '../widgets/category_grid.dart';
import '../widgets/category_card.dart';
import '../models/dummy_data.dart';

class Catigories extends StatelessWidget {
  const Catigories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: CatigoryGrid(
        children: getCategoryCards(dommyCategories),
      ),
    );
  }
}
