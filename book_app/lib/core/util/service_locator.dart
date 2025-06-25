import 'dart:convert';

import 'package:book_app/features/book/data/data_source/books_api_service.dart';
import 'package:book_app/features/book/data/models/books.dart';
import 'package:book_app/features/book/data/repository/book_repository_impl.dart';
import 'package:book_app/features/book/domain/repository/book_repository.dart';
import 'package:book_app/features/book/domain/usecases/fetch_feature_book.dart';
import 'package:book_app/features/book/domain/usecases/fetch_newest_book.dart';
import 'package:book_app/features/book/domain/usecases/fetch_similar_book.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

class BookCacheService {
  Future<void> saveBooksToCache(
    BookModel bookModel, {
    String key = 'book_cache',
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(bookModel.toJson());
    await prefs.setString(key, jsonString);
  }

  Future<BookModel?> getBooksFromCache({String key = 'book_cache'}) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(key);
    if (jsonString != null) {
      return BookModel.fromJson(jsonDecode(jsonString));
    }
    return null;
  }
}

void setUpServiceLocator() {
  // getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<BooksApiService>(BooksApiService(getIt.get<Dio>()));
  getIt.registerSingleton<BookRepository>(
    BookRepositoryImpl(getIt.get<BooksApiService>()),
  );
  getIt.registerSingleton<BookCacheService>(BookCacheService());
  getIt.registerSingleton<FetchNewestBooks>(
    FetchNewestBooks(getIt.get<BookRepository>()),
  );
  getIt.registerSingleton<FetchFeaturedBooks>(
    FetchFeaturedBooks(getIt.get<BookRepository>()),
  );
  getIt.registerSingleton<FetchSimilarBooks>(
    FetchSimilarBooks(getIt.get<BookRepository>()),
  );
}
