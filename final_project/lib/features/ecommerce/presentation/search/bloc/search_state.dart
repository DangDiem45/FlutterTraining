import 'package:final_project/features/ecommerce/domain/entities/products/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    String? query,
    List<Product>? searchResults,
    List<String>? recentSearches,
    bool? isSearching,
    bool? showFilters,
    String? sortBy,
    double? minPrice,
    double? maxPrice,
    List<String>? selectedSizes,
    String? selectedCategory,
    List<String>? suggestions,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
    query: '',
    searchResults: [],
    recentSearches: [],
    isSearching: false,
    showFilters: false,
    sortBy: 'Relevance',
    minPrice: 0,
    maxPrice: 1000,
    selectedSizes: [],
    selectedCategory: 'All',
  );
}
