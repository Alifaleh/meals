import 'package:flutter/material.dart';
import '../models/meal.dart';

class FavoratesProvider with ChangeNotifier {
  List<Meal> _favorates = [];

  addFavorates(Meal favoratesToAdd) {
    _favorates.add(favoratesToAdd);
    notifyListeners();
  }

  removeFavorate(Meal favorateToRemove) {
    _favorates.remove(favorateToRemove);
    notifyListeners();
  }

  List<Meal> getFavorates() {
    return [..._favorates];
  }
}
