import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../widgets/category_grid.dart';
import '../widgets/category_card.dart';

import '../models/dummy_data.dart';

import '../providers/categories_provider.dart';

class Categories extends StatefulWidget {
  static const String routeName = '/';
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // @override
  // void initState() {
  //   const String url =
  //       "https://meals-a71db-default-rtdb.firebaseio.com/meals.json";
  //   http.post(url, body: convert.jsonEncode({'test': '5'})).then((response) {
  //     print(convert.json.decode(response.body));
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final categoriesProvider = Provider.of<CategoriesProvider>(context);
    categoriesProvider.setCategories(dommyCategories);
    return CatigoryGrid(
      children: getCategoryCards(categoriesProvider.getCategories()),
    );
  }
}
