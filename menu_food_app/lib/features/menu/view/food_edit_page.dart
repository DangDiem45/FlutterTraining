import 'package:flutter/material.dart';
import '../model/food_item.dart';

class FoodEditPage extends StatefulWidget {
  final FoodItem food;

  const FoodEditPage({Key? key, required this.food}) : super(key: key);

  @override
  State<FoodEditPage> createState() => _FoodEditPageState();
}

class _FoodEditPageState extends State<FoodEditPage> {
  late TextEditingController _nameController;
  late TextEditingController _descController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.food.name);
    _descController = TextEditingController(text: widget.food.description);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descController.dispose();
    super.dispose();
  }

  void _save() {
    final updatedFood = FoodItem(
      id: widget.food.id,
      name: _nameController.text,
      description: _descController.text,
      imageUrl: widget.food.imageUrl,
    );
    Navigator.pop(context, updatedFood);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Food'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _save,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Food Name'),
            ),
            TextField(
              controller: _descController,
              decoration: const InputDecoration(labelText: 'Description'),
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
