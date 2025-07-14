import 'package:final_project/features/ecommerce/domain/entities/products/product.dart';

abstract class SearchEvent {}

class PerformSearch extends SearchEvent {
  final String query;
  final List<Product> allProducts;

  PerformSearch(this.query, this.allProducts);
}

class ClearSearch extends SearchEvent {}

class AddRecentSearch extends SearchEvent {
  final String search;

  AddRecentSearch(this.search);
}

class RemoveRecentSearch extends SearchEvent {
  final String search;

  RemoveRecentSearch(this.search);
}

class ToggleFilters extends SearchEvent {}

class UpdateFilters extends SearchEvent {
  final String sortBy;
  final double minPrice;
  final double maxPrice;
  final List<String> selectedSizes;
  final String selectedCategory;

  UpdateFilters({
    required this.sortBy,
    required this.minPrice,
    required this.maxPrice,
    required this.selectedSizes,
    required this.selectedCategory,
  });
}
