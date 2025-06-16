// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  subtitle: json['subtitle'] as String?,
  authors: (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
  description: json['description'] as String?,
  coverUrl: json['coverUrl'] as String?,
  language: json['language'] as String?,
  publishedDate: json['publishedDate'] == null
      ? null
      : DateTime.parse(json['publishedDate'] as String),
  categories: (json['categories'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  pageCount: (json['pageCount'] as num?)?.toInt(),
  downloadUrl: json['downloadUrl'] as String?,
  onlineReadUrl: json['onlineReadUrl'] as String?,
);

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'subtitle': instance.subtitle,
  'authors': instance.authors,
  'description': instance.description,
  'coverUrl': instance.coverUrl,
  'language': instance.language,
  'publishedDate': instance.publishedDate?.toIso8601String(),
  'categories': instance.categories,
  'pageCount': instance.pageCount,
  'downloadUrl': instance.downloadUrl,
  'onlineReadUrl': instance.onlineReadUrl,
};
