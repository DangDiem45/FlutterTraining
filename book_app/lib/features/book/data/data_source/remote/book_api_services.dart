import 'dart:convert';
import 'package:book_app/core/error/exception.dart';
import 'package:book_app/features/book/data/models/books.dart';
import 'package:http/http.dart' as http;

abstract class BookRemoteDataSource {
  Future<List<BookModel>> getBooks({
    int page = 1,
    int limit = 20,
    String? category,
    String? query,
  });
}

class BookRemoteDataSourceImpl implements BookRemoteDataSource {
  final http.Client client;
  static const String baseUrl = 'https://catalog.feedbooks.com';

  BookRemoteDataSourceImpl({required this.client});

  @override
  Future<List<BookModel>> getBooks({
    int page = 1,
    int limit = 20,
    String? category,
    String? query,
  }) async {
    try {
      final Map<String, String> queryParams = {
        'page': page.toString(),
        'size': limit.toString(),
        'format': 'json',
      };

      if (category != null && category.isNotEmpty) {
        queryParams['category'] = category;
      }

      if (query != null && query.isNotEmpty) {
        queryParams['query'] = query;
      }

      final uri = Uri.parse(
        '$baseUrl/catalog/index.json',
      ).replace(queryParameters: queryParams);

      final response = await client.get(
        uri,
        headers: {'Accept': 'application/json'},
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final List<dynamic> booksJson = jsonData['books'] ?? [];

        return booksJson
            .map((bookJson) => BookModel.fromJson(bookJson))
            .toList();
      } else {
        throw ServerException('Failed to fetch books: ${response.statusCode}');
      }
    } catch (e) {
      if (e is ServerException) rethrow;
      throw NetworkException('Network error: $e');
    }
  }
}
