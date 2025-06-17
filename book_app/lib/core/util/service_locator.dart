import 'package:book_app/core/util/api_service.dart';
import 'package:book_app/features/book/data/repository/book_repository_impl.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';
import 'package:book_app/features/book/domain/usecases/fetch_feature_book.dart';
import 'package:book_app/features/book/domain/usecases/fetch_newest_book.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<BookRepository>(
    BookRepositoryImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<FetchNewestBooks>(
    FetchNewestBooks(getIt.get<BookRepository>()),
  );
  getIt.registerSingleton<FetchFeaturedBooks>(
    FetchFeaturedBooks(getIt.get<BookRepository>()),
  );
}
