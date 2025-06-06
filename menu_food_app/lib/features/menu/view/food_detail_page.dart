import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:menu_food_app/features/menu/model/food_item.dart';
import 'package:menu_food_app/features/menu/view/food_edit_page.dart';

class FoodDetailPage extends StatefulWidget {
  final FoodItem food;

  const FoodDetailPage({Key? key, required this.food}) : super(key: key);

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  late FoodItem _food;

  @override
  void initState() {
    super.initState();
    _food = widget.food;
  }

  void _editFood() async {
    final updatedFood = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => FoodEditPage(food: _food)),
    );

    if (updatedFood != null) {
      setState(() {
        _food = updatedFood as FoodItem;
      });
      Navigator.pop(context, _food);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_food.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: _editFood,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: _food.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                height: 200,
                color: Colors.grey[300],
                child: const Center(child: CircularProgressIndicator()),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            const SizedBox(height: 16),
            Text(
              _food.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(_food.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
