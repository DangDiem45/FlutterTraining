import 'package:flutter/material.dart';
import 'package:menu_food_app/features/menu/model/food_item.dart';
import 'package:menu_food_app/features/menu/repository/food_repository.dart';
import 'package:menu_food_app/features/menu/view/food_detail_page.dart';
import 'package:menu_food_app/features/menu/widget/food_card.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key, required this.foodRepository})
      : super(key: key);
  final FoodRepository foodRepository;

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
    final foods = await widget.foodRepository.getFoods();
    setState(() {
      _foods = foods;
    });
  }

  void _toggleView() {
    setState(() {
      _isGridView = !_isGridView;
    });
  }

  Future<void> _goToDetail(FoodItem food) async {
    final updatedFood = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => FoodDetailPage(
                food: food,
              )),
    );

    await _loadFoods();
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
