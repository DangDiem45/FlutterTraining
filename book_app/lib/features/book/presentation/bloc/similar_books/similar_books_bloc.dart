import 'package:book_app/features/book/domain/usecases/fetch_similar_book.dart';
import 'package:book_app/features/book/presentation/bloc/similar_books/similar_books_event.dart';
import 'package:book_app/features/book/presentation/bloc/similar_books/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksBloc extends Bloc<SimilarBooksEvent, SimilarBooksState> {
  final FetchSimilarBooks fetchSimilarBooks;

  SimilarBooksBloc(this.fetchSimilarBooks) : super(SimilarBooksInitial()) {
    on<FetchSimilarBooksEvent>(_onFetchSimilarBooks);
  }

  Future<void> _onFetchSimilarBooks(
    FetchSimilarBooksEvent event,
    Emitter<SimilarBooksState> emit,
  ) async {
    emit(SimilarBooksLoading());
    final result = await fetchSimilarBooks(categories: event.categories);
    result.fold(
      (failure) => emit(SimilarBooksFailure(failure.errMessage)),
      (books) => emit(SimilarBooksSuccess(books)),
    );
  }
}
