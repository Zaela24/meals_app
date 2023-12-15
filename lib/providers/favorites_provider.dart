import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  // NOTE: Not allowed to modify existing values iin Notifier classes,
  // MUST create new ones
  bool toggleFavoriteStatus(Meal meal) {
    final mealsFavorite = state.contains(meal);

    if (mealsFavorite) {
      // remove existing favorite
      // .where() creates new list
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      // add new favorite
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) => FavoriteMealsNotifier(),
);
