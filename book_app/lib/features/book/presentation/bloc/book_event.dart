import 'package:equatable/equatable.dart';

abstract class BookEvent extends Equatable {
  const BookEvent();
  @override
  List<Object?> get props => [];
}

class LoadBooks extends BookEvent {
  final int page;
  final String? category;
  final String? query;
  final bool isRefresh;
  const LoadBooks({
    this.page = 1,
    this.category,
    this.query,
    this.isRefresh = false,
  });
  @override
  List<Object?> get props => [page, category, query, isRefresh];
}

class LoadMoreBooks extends BookEvent {
  const LoadMoreBooks();
}

class SearchBooks extends BookEvent {
  final String query;
  const SearchBooks(this.query);
  @override
  List<Object> get props => [query];
}

class FilterBooksByCategory extends BookEvent {
  final String? category;
  const FilterBooksByCategory(this.category);
  @override
  List<Object?> get props => [category];
}
