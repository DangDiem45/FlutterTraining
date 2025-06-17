import 'package:book_app/core/error/failures.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooks {
  final BookRepository repository;

  FetchNewestBooks(this.repository);

  Future<Either<Failure, BookEntity>> call({required int startIndex}) async {
    return await repository.fetchNewestBooks(startIndex: startIndex);
  }
}
