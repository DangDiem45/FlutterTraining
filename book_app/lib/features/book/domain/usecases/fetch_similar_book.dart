import 'package:book_app/core/error/failures.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';
import 'package:dartz/dartz.dart';

class FetchSimilarBooks {
  final BookRepository repository;

  FetchSimilarBooks(this.repository);

  Future<Either<Failure, BookEntity>> call({required String categories}) async {
    return await repository.fetchSimilarBooks(categories: categories);
  }
}
