import 'package:book_app/core/error/failures.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:dartz/dartz.dart';

abstract class BookRepository {
  Future<Either<Failure, List<BookEntity>>> getBooks({
    int page = 1,
    int limit = 20,
    String? category,
    String? query,
  });
}
