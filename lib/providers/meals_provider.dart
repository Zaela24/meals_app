import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/data/dummy_data.dart';

// NOTE: This Provider is unnecessary as dummyMeals can just be
// imported normally; this Provider is being used mainly for practice
final mealsProvider = Provider((ref) {
  return dummyMeals;
});
