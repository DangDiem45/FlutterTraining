import 'package:equatable/equatable.dart';

class BookEntity extends Equatable {
  final int id;
  final String title;
  final String? subtitle;
  final List<String> authors;
  final String? description;
  final String? coverUrl;
  final String? language;
  final DateTime? publishedDate;
  final List<String> categories;
  final int? pageCount;
  final String? downloadUrl;
  final String? onlineReadUrl;

  BookEntity({
    required this.id,
    required this.title,
    this.subtitle,
    required this.authors,
    this.description,
    this.coverUrl,
    this.language,
    this.publishedDate,
    required this.categories,
    this.pageCount,
    this.downloadUrl,
    this.onlineReadUrl,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    subtitle,
    authors,
    description,
    coverUrl,
    language,
    publishedDate,
    categories,
    pageCount,
    downloadUrl,
    onlineReadUrl,
  ];
}
