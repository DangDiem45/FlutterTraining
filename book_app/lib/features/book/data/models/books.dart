import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:json_annotation/json_annotation.dart';

part 'books.g.dart';

@JsonSerializable()
class BookModel extends BookEntity {
  BookModel({
    required super.id,
    required super.title,
    super.subtitle,
    required super.authors,
    super.description,
    super.coverUrl,
    super.language,
    super.publishedDate,
    required super.categories,
    super.pageCount,
    super.downloadUrl,
    super.onlineReadUrl,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'] as int,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      authors: _parseAuthors(json['authors']),
      description: json['description'] as String?,
      coverUrl: _parseCoverUrl(json['cover']),
      language: json['language'] as String?,
      publishedDate:
          json['published'] != null
              ? DateTime.tryParse(json['published'])
              : null,
      categories: _parseCategories(json['categories']),
      pageCount: json['page_count'] as int?,
      downloadUrl: _parseDownloadUrl(json['downloads']),
      onlineReadUrl: json['online_read_url'] as String?,
    );
  }

  Map<String, dynamic> toJson() => _$BookModelToJson(this);

  static List<String> _parseAuthors(dynamic authors) {
    if (authors == null) return [];
    if (authors is List) {
      return authors
          .map((author) {
            if (author is Map<String, dynamic>) {
              return author['name'] as String? ?? '';
            }
            return author.toString();
          })
          .where((name) => name.isNotEmpty)
          .toList();
    }
    return [];
  }

  static List<String> _parseCategories(dynamic categories) {
    if (categories == null) return [];
    if (categories is List) {
      return categories
          .map((category) {
            if (category is Map<String, dynamic>) {
              return category['label'] as String? ?? '';
            }
            return category.toString();
          })
          .where((name) => name.isNotEmpty)
          .toList();
    }
    return [];
  }

  static String? _parseCoverUrl(dynamic cover) {
    if (cover == null) return null;
    if (cover is Map<String, dynamic>) {
      return cover['large'] as String? ??
          cover['medium'] as String? ??
          cover['small'] as String?;
    }
    return cover.toString();
  }

  static String? _parseDownloadUrl(dynamic downloads) {
    if (downloads == null) return null;
    if (downloads is List && downloads.isNotEmpty) {
      final download = downloads.first;
      if (download is Map<String, dynamic>) {
        return download['url'] as String?;
      }
    }
    return null;
  }
}
