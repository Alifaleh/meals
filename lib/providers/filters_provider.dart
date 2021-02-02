import 'package:flutter/material.dart';

enum Filter {
  isGlutenFree,
  isLactoseFree,
  isVegan,
  isVegetarian,
}

class FiltersProvider with ChangeNotifier {
  Map<Filter, bool> _filters = {
    Filter.isGlutenFree: false,
    Filter.isLactoseFree: false,
    Filter.isVegan: false,
    Filter.isVegetarian: false
  };

  void setfilters(Filter filter, bool val, bool setState) {
    _filters[filter] = val;
    if (setState) {
      notifyListeners();
    }
  }

  bool isSet(Filter filter) {
    return _filters[filter];
  }
}
