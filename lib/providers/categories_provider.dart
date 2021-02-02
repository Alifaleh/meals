import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesProvider with ChangeNotifier {
  List<Category> _categories;
  Category _currentCategory;

  List<Category> getCategories() {
    return [..._categories].toList();
  }

  setCategories(List<Category> categories) {
    this._categories = [...categories].toList();
  }

  Category getCurrentCategory() {
    return _currentCategory;
  }

  setCurrentCategory(Category currentCategory) {
    this._currentCategory = currentCategory;
    notifyListeners();
  }
}
