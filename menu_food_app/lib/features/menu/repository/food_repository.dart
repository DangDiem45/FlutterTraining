import 'package:menu_food_app/features/menu/model/food_item.dart';

abstract class FoodRepository {
  Future<List<FoodItem>> getFoods();
}

class FoodRepositoryIml implements FoodRepository {
  final List<FoodItem> _foods = [
    FoodItem(
      id: '1',
      name: 'Cơm Tấm',
      description: 'Cơm tấm sườn bì chả',
      imageUrl: 'https://images.unsplash.com/photo-1512058564366-18510be2db19',
    ),
    FoodItem(
      id: '2',
      name: 'Phở Bò',
      description: 'Phở bò thơm ngon',
      imageUrl: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c',
    ),
    FoodItem(
      id: '3',
      name: 'Bánh Mì',
      description: 'Bánh mì pate ngon',
      imageUrl: 'https://images.unsplash.com/photo-1555507036-ab1f4038808a',
    ),
  ];

  @override
  Future<List<FoodItem>> getFoods() async {
    await Future.delayed(const Duration(seconds: 1));
    return List<FoodItem>.from(_foods);
  }
}
