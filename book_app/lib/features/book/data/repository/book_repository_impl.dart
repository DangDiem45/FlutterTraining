import 'package:book_app/core/constant/constants.dart';
import 'package:book_app/core/error/failures.dart';
import 'package:book_app/features/book/data/data_source/books_api_service.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BookRepositoryImpl implements BookRepository {
  final BooksApiService booksApiService;

  BookRepositoryImpl(this.booksApiService);

  @override
  Future<Either<Failure, BookEntity>> fetchNewestBooks({
    required int startIndex,
  }) async {
    try {
      final data = await booksApiService.getBooks(
        query: 'programming',
        filtering: 'free-ebooks',
        sorting: 'newest',
        startIndex: startIndex,
        apiKey: bookApiKey,
      );

      final entity = data.toEntity();

      return Right(entity);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure('Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, BookEntity>> fetchFeaturedBooks() async {
    try {
      final data = await booksApiService.getBooks(
        query: 'computer science',
        filtering: 'free-ebooks',
        sorting: null,
        startIndex: null,
        apiKey: bookApiKey,
      );

      final entity = data.toEntity();

      return Right(entity);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure('Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, BookEntity>> fetchSimilarBooks({
    required String categories,
  }) async {
    try {
      final data = await booksApiService.getBooks(
        query: 'Subject:$categories',
        filtering: 'free-ebooks',
        sorting: 'relevance',
        startIndex: null,
        apiKey: bookApiKey,
      );

      final entity = data.toEntity();

      return Right(entity);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure('Unexpected error: $e'));
    }
  }
}
