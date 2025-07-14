import 'package:final_project/features/ecommerce/domain/entities/products/product.dart';
import 'package:final_project/features/ecommerce/presentation/home/widgets/product_card.dart';
import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  final List<Product> searchResults;
  final String selectedCategory;

  const SearchResults({
    super.key,
    required this.searchResults,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4, // ['All', 'T-shirts', 'Jeans', 'Shoes']
            itemBuilder: (context, index) {
              final categories = ['All', 'T-shirts', 'Jeans', 'Shoes'];
              final category = categories[index];
              final isSelected = selectedCategory == category;
              return GestureDetector(
                onTap: () {
                  // Update category logic here if needed
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.black : Colors.transparent,
                    border: Border.all(
                      color: isSelected ? Colors.black : Colors.grey[300]!,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      category,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ProductCard(product: searchResults[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}
