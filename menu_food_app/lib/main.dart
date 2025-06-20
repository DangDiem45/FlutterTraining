import 'package:flutter/widgets.dart';
import 'package:menu_food_app/app/view/app.dart';
import 'package:menu_food_app/features/menu/repository/food_repository.dart';

void main() {
  runApp(MenuFoodApp(
    foodRepository: FoodRepositoryIml(),
  ));
}
