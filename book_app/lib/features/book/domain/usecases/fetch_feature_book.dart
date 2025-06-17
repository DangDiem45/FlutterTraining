import 'package:book_app/core/error/failures.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooks {
  final BookRepository repository;

  FetchFeaturedBooks(this.repository);

  Future<Either<Failure, BookEntity>> call() async {
    return await repository.fetchFeaturedBooks();
  }
}
