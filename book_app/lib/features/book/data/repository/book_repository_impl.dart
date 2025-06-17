import 'package:book_app/core/constant/constants.dart';
import 'package:book_app/core/error/failures.dart';
import 'package:book_app/core/util/api_service.dart';
import 'package:book_app/features/book/data/models/books.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BookRepositoryImpl implements BookRepository {
  final ApiService apiService;
  BookRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, BookEntity>> fetchNewestBooks({
    required int startIndex,
  }) async {
    try {
      final data = await apiService.get(
        endPoint:
            'volumes?filter=free-ebooks&orderBy=newest&q=programming&startIndex=$startIndex&key=$bookApiKey',
      );

      final bookModel = BookModel.fromJson(data);
      return Right(bookModel.toEntity() as BookEntity);
    } on DioException catch (e) {
      print(
        'DioException in fetchNewestBooks: ${e.message}, Type: ${e.type}, Response: ${e.response?.data}, StackTrace: ${e.stackTrace}',
      );
      return Left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, BookEntity>> fetchFeaturedBooks() async {
    try {
      final data = await apiService.get(
        endPoint:
            'volumes?filter=free-ebooks&q=computer science&key=$bookApiKey',
      );
      final bookModel = BookModel.fromJson(data);
      return Right(bookModel.toEntity() as BookEntity);
    } on DioException catch (e) {
      print(
        'DioException in fetchFeaturedBooks: ${e.message}, Type: ${e.type}, Response: ${e.response?.data}, StackTrace: ${e.stackTrace}',
      );
      return Left(ServerFailure.fromDioException(e));
    }
  }
}
