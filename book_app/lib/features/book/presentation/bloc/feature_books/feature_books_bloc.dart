import 'package:bloc/bloc.dart';
import 'package:book_app/features/book/domain/usecases/fetch_feature_book.dart';
import 'package:book_app/features/book/presentation/bloc/feature_books/feature_books_event.dart';
import 'package:book_app/features/book/presentation/bloc/feature_books/feature_books_state.dart';

class FeaturedBooksBloc extends Bloc<FeaturedBooksEvent, FeaturedBooksState> {
  final FetchFeaturedBooks fetchFeaturedBooks;

  FeaturedBooksBloc(this.fetchFeaturedBooks) : super(FeaturedBooksInitial()) {
    on<FetchFeaturedBooksEvent>(_onFetchFeaturedBooks);
  }

  Future<void> _onFetchFeaturedBooks(
    FetchFeaturedBooksEvent event,
    Emitter<FeaturedBooksState> emit,
  ) async {
    emit(FeaturedBooksLoading());
    final result = await fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksFailure(failure.errMessage)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
