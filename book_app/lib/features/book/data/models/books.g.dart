// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookModel _$BookModelFromJson(Map<String, dynamic> json) => _BookModel(
  kind: json['kind'] as String?,
  totalItems: json['totalItems'] as num?,
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BookModelToJson(_BookModel instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'totalItems': instance.totalItems,
      'items': instance.items,
    };

_Items _$ItemsFromJson(Map<String, dynamic> json) => _Items(
  id: json['id'] as String?,
  volumeInfo: json['volumeInfo'] == null
      ? null
      : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
  saleInfo: json['saleInfo'] == null
      ? null
      : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ItemsToJson(_Items instance) => <String, dynamic>{
  'id': instance.id,
  'volumeInfo': instance.volumeInfo,
  'saleInfo': instance.saleInfo,
};

_VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) => _VolumeInfo(
  title: json['title'] as String?,
  authors: (json['authors'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  publisher: json['publisher'] as String?,
  publishedDate: json['publishedDate'] as String?,
  description: json['description'] as String?,
  pageCount: json['pageCount'] as num?,
  averageRating: json['averageRating'] as num?,
  ratingsCount: json['ratingsCount'] as num?,
  imageLinks: json['imageLinks'] == null
      ? null
      : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$VolumeInfoToJson(_VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'pageCount': instance.pageCount,
      'averageRating': instance.averageRating,
      'ratingsCount': instance.ratingsCount,
      'imageLinks': instance.imageLinks,
      'categories': instance.categories,
    };

_ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) =>
    _ImageLinks(thumbnail: json['thumbnail'] as String?);

Map<String, dynamic> _$ImageLinksToJson(_ImageLinks instance) =>
    <String, dynamic>{'thumbnail': instance.thumbnail};

_SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) => _SaleInfo(
  country: json['country'] as String?,
  saleability: json['saleability'] as String?,
  isEbook: json['isEbook'] as bool?,
  listPrice: json['listPrice'] == null
      ? null
      : ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>),
  retailPrice: json['retailPrice'] == null
      ? null
      : ListPrice.fromJson(json['retailPrice'] as Map<String, dynamic>),
  buyLink: json['buyLink'] as String?,
);

Map<String, dynamic> _$SaleInfoToJson(_SaleInfo instance) => <String, dynamic>{
  'country': instance.country,
  'saleability': instance.saleability,
  'isEbook': instance.isEbook,
  'listPrice': instance.listPrice,
  'retailPrice': instance.retailPrice,
  'buyLink': instance.buyLink,
};

_ListPrice _$ListPriceFromJson(Map<String, dynamic> json) => _ListPrice(
  amount: json['amount'] as num?,
  currencyCode: json['currencyCode'] as String?,
);

Map<String, dynamic> _$ListPriceToJson(_ListPrice instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };
