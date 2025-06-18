import 'package:book_app/core/error/failures.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:dartz/dartz.dart';

abstract class BookRepository {
  Future<Either<Failure, BookEntity>> fetchNewestBooks({
    required int startIndex,
  });
  Future<Either<Failure, BookEntity>> fetchFeaturedBooks();
  Future<Either<Failure, BookEntity>> fetchSimilarBooks({
    required String categories,
  });
}
