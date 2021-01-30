import 'package:flutter/material.dart';

import '../widgets/category_card.dart';

class CatigoryGrid extends StatelessWidget {
  final List<CategoryCard> children;

  const CatigoryGrid({
    @required this.children,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      children: children,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
