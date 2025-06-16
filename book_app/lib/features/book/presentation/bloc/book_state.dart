import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:equatable/equatable.dart';

abstract class BookState extends Equatable {
  const BookState();
  @override
  List<Object?> get props => [];
}

class BookInitial extends BookState {}

class BookLoading extends BookState {}

class BookLoaded extends BookState {
  final List<BookEntity> books;
  final bool hasReachedMax;
  final int currentPage;
  final String? currentCategory;
  final String? currentQuery;
  const BookLoaded({
    required this.books,
    required this.hasReachedMax,
    required this.currentPage,
    this.currentCategory,
    this.currentQuery,
  });
  BookLoaded copyWith({
    List<BookEntity>? books,
    bool? hasReachedMax,
    int? currentPage,
    String? currentCategory,
    String? currentQuery,
  }) {
    return BookLoaded(
      books: books ?? this.books,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentPage: currentPage ?? this.currentPage,
      currentCategory: currentCategory ?? this.currentCategory,
      currentQuery: currentQuery ?? this.currentQuery,
    );
  }

  @override
  List<Object?> get props => [
    books,
    hasReachedMax,
    currentPage,
    currentCategory,
    currentQuery,
  ];
}

class BookError extends BookState {
  final String message;
  const BookError(this.message);
  @override
  List<Object> get props => [message];
}
