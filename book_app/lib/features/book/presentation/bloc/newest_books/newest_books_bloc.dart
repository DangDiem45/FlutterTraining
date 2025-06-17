import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/usecases/fetch_newest_book.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_event.dart';
import 'newest_books_state.dart';

class NewestBooksBloc extends Bloc<NewestBooksEvent, NewestBooksState> {
  final FetchNewestBooks fetchNewestBooks;
  List<BookItemsEntity> loadedBooks = [];
  int startIndex = 0;

  NewestBooksBloc(this.fetchNewestBooks) : super(NewestBooksInitial()) {
    on<FetchNewestBooksEvent>(_onFetchNewestBooks);
  }

  Future<void> _onFetchNewestBooks(
    FetchNewestBooksEvent event,
    Emitter<NewestBooksState> emit,
  ) async {
    emit(NewestBooksLoading());
    if (event.isNewFetch) {
      loadedBooks.clear();
      startIndex = event.startIndex;
    }
    final result = await fetchNewestBooks(startIndex: event.startIndex);
    result.fold((failure) => emit(NewestBooksFailure(failure.errMessage)), (
      books,
    ) {
      loadedBooks.addAll(books.items ?? []);
      startIndex += 10;
      emit(NewestBooksSuccess(BookEntity(items: loadedBooks)));
    });
  }
}
