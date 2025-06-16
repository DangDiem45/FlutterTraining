import 'package:book_app/features/book/domain/usecases/getbooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book_event.dart';
import 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final GetBooks getBooks;
  BookBloc({required this.getBooks}) : super(BookInitial()) {
    on<LoadBooks>(_onLoadBooks);
    on<LoadMoreBooks>(_onLoadMoreBooks);
  }
  Future<void> _onLoadBooks(LoadBooks event, Emitter<BookState> emit) async {
    if (event.isRefresh || state is BookInitial) {
      emit(BookLoading());
    }

    final result = await getBooks(
      GetBooksParams(
        page: event.page,
        category: event.category,
        query: event.query,
      ),
    );

    result.fold(
      (failure) => emit(BookError(failure.message)),
      (books) => emit(
        BookLoaded(
          books: books,
          hasReachedMax: books.length < 20,
          currentPage: event.page,
          currentCategory: event.category,
          currentQuery: event.query,
        ),
      ),
    );
  }

  Future<void> _onLoadMoreBooks(
    LoadMoreBooks event,
    Emitter<BookState> emit,
  ) async {
    if (state is BookLoaded) {
      final currentState = state as BookLoaded;
      if (currentState.hasReachedMax) return;

      final result = await getBooks(
        GetBooksParams(
          page: currentState.currentPage + 1,
          category: currentState.currentCategory,
          query: currentState.currentQuery,
        ),
      );

      result.fold(
        (failure) => emit(BookError(failure.message)),
        (books) => emit(
          currentState.copyWith(
            books: [...currentState.books, ...books],
            hasReachedMax: books.length < 20,
            currentPage: currentState.currentPage + 1,
          ),
        ),
      );
    }
  }
}
