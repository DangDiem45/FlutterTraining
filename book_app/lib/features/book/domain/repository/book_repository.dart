import 'package:book_app/core/resource/data_state.dart';
import 'package:book_app/features/book/domain/entities/books.dart';

abstract class BookRepository {
  Future<DataState<List<BookEntity>>> getBooks();
}
