import 'package:book_app/core/error/exception.dart';
import 'package:book_app/core/error/failures.dart';
import 'package:book_app/features/book/data/data_source/remote/book_api_services.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';
import 'package:dartz/dartz.dart';

class BookRepositoryImpl implements BookRepository {
  final BookRemoteDataSource remoteDataSource;

  BookRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> getBooks({
    int page = 1,
    int limit = 20,
    String? category,
    String? query,
  }) async {
    try {
      final remoteBooks = await remoteDataSource.getBooks(
        page: page,
        limit: limit,
        category: category,
        query: query,
      );
      return Right(remoteBooks);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Unknown error occurred'));
    }
  }
}
