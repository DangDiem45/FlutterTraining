import 'package:book_app/core/resource/data_state.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';

class BookRepositoryIml implements BookRepository {
  @override
  Future<DataState<List<BookEntity>>> getBooks() {
    // TODO: implement getBooks
    throw UnimplementedError();
  }
}
