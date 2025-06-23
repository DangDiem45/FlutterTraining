import 'package:book_app/features/book/data/models/books.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'books_api_service.g.dart';

@RestApi(baseUrl: 'https://www.googleapis.com/books/v1/')
abstract class BooksApiService {
  factory BooksApiService(Dio dio, {String? baseUrl}) = _BooksApiService;

  @GET('volumes')
  Future<BookModel> getBooks({
    @Query("q") required String query,
    @Query("Filtering") required String filtering,
    @Query("Sorting") String? sorting,
    @Query("startIndex") int? startIndex,
    @Query("key") required String apiKey,
  });
}
