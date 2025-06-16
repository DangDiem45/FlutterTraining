import 'package:book_app/core/error/failures.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetBooks {
  final BookRepository repository;

  GetBooks(this.repository);

  Future<Either<Failure, List<BookEntity>>> call(GetBooksParams params) async {
    return await repository.getBooks(
      page: params.page,
      limit: params.limit,
      category: params.category,
      query: params.query,
    );
  }
}

class GetBooksParams extends Equatable {
  final int page;
  final int limit;
  final String? category;
  final String? query;

  const GetBooksParams({
    this.page = 1,
    this.limit = 20,
    this.category,
    this.query,
  });

  @override
  List<Object?> get props => [page, limit, category, query];
}
