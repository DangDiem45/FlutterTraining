import 'package:book_app/core/constant/constant.dart';
import 'package:book_app/features/book/data/models/books.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'book_api_services.g.dart';

@RestApi(baseUrl: bookApiBaseURL)
abstract class BookApiServices {
  factory BookApiServices(Dio dio) = _BookApiServices;

  @GET('/search.json')
  Future<HttpResponse<List<BookModel>>> getBooks({@Query("q") String? q});
}
