import 'package:flutter/material.dart';
import 'package:menu_food_app/features/menu/model/food_item.dart';
import 'package:menu_food_app/features/menu/view/food_detail_page.dart';
import 'package:menu_food_app/features/menu/widget/food_card.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  State<FoodListPage> createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  bool _isGridView = false;
  List<FoodItem> _foods = [];

  @override
  void initState() {
    super.initState();
    _loadFoods();
  }

  Future<void> _loadFoods() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _foods = [
        FoodItem(
          id: '1',
          name: 'Cơm Tấm',
          description: 'Cơm tấm sườn bì chả',
          imageUrl:
              'https://images.unsplash.com/photo-1512058564366-18510be2db19',
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
    });
  }

  void _toggleView() {
    setState(() {
      _isGridView = !_isGridView;
    });
  }

  void _goToDetail(FoodItem food) async {
    final updatedFood = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => FoodDetailPage(food: food)),
    );

    if (updatedFood != null) {
      setState(() {
        final index = _foods.indexWhere((f) => f.id == updatedFood.id);
        if (index != -1) {
          _foods[index] = updatedFood as FoodItem;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Menu'),
        actions: [
          IconButton(
            icon: Icon(_isGridView ? Icons.list : Icons.grid_view),
            onPressed: _toggleView,
          ),
        ],
      ),
      body: _foods.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : _isGridView
              ? GridView.builder(
                  padding: const EdgeInsets.all(8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 3 / 2,
                  ),
                  itemCount: _foods.length,
                  itemBuilder: (context, index) {
                    final food = _foods[index];
                    return FoodCard(
                      food: food,
                      onTap: () => _goToDetail(food),
                    );
                  },
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: _foods.length,
                  itemBuilder: (context, index) {
                    final food = _foods[index];
                    return FoodCard(
                      food: food,
                      onTap: () => _goToDetail(food),
                    );
                  },
                ),
    );
  }
}
