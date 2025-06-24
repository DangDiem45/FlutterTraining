// import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'books.freezed.dart';
part 'books.g.dart';

@freezed
abstract class BookModel with _$BookModel {
  factory BookModel({String? kind, num? totalItems, List<Items>? items}) =
      _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}
// class BookModel {
//   final String? kind;
//   final num? totalItems;
//   final List<Items>? items;

//   BookModel({this.kind, this.totalItems, this.items});

//   factory BookModel.fromJson(Map<String, dynamic> json) {
//     return BookModel(
//       kind: json['kind'] as String?,
//       totalItems: json['totalItems'] as num?,
//       items:
//           (json['items'] as List<dynamic>?)
//               ?.map((item) => Items.fromJson(item as Map<String, dynamic>))
//               .toList(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'kind': kind,
//       'totalItems': totalItems,
//       'items': items?.map((item) => item.toJson()).toList(),
//     };
//   }

//   BookEntity toEntity() {
//     return BookEntity(
//       kind: kind,
//       totalItems: totalItems,
//       items: items?.map((e) => e.toEntity()).toList(),
//     );
//   }
// }

@freezed
abstract class Items with _$Items {
  factory Items({String? id, VolumeInfo? volumeInfo, SaleInfo? saleInfo}) =
      _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

// class Items {
//   final String? id;
//   final VolumeInfo? volumeInfo;
//   final SaleInfo? saleInfo;

//   Items({this.id, this.volumeInfo, this.saleInfo});

//   factory Items.fromJson(Map<String, dynamic> json) {
//     return Items(
//       id: json['id'] as String?,
//       volumeInfo:
//           json['volumeInfo'] != null
//               ? VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>)
//               : null,
//       saleInfo:
//           json['saleInfo'] != null
//               ? SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>)
//               : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'volumeInfo': volumeInfo?.toJson(),
//       'saleInfo': saleInfo?.toJson(),
//     };
//   }

//   BookItemsEntity toEntity() {
//     return BookItemsEntity(
//       id: id,
//       volumeInfo: volumeInfo?.toEntity(),
//       saleInfo: saleInfo?.toEntity(),
//     );
//   }
// }

@freezed
abstract class VolumeInfo with _$VolumeInfo {
  factory VolumeInfo({
    String? title,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    num? pageCount,
    num? averageRating,
    num? ratingsCount,
    ImageLinks? imageLinks,
    List<String>? categories,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}

// class VolumeInfo {
//   final String? title;
//   final List<String>? authors;
//   final String? publisher;
//   final String? publishedDate;
//   final String? description;
//   final num? pageCount;
//   final num? averageRating;
//   final num? ratingsCount;
//   final ImageLinks? imageLinks;
//   final List<String>? categories;

//   VolumeInfo({
//     this.title,
//     this.authors,
//     this.publisher,
//     this.publishedDate,
//     this.description,
//     this.pageCount,
//     this.averageRating,
//     this.ratingsCount,
//     this.imageLinks,
//     this.categories,
//   });

//   factory VolumeInfo.fromJson(Map<String, dynamic> json) {
//     return VolumeInfo(
//       title: json['title'] as String?,
//       authors: (json['authors'] as List?)?.cast<String>(),
//       publisher: json['publisher'] as String?,
//       publishedDate: json['publishedDate'] as String?,
//       description: json['description'] as String?,
//       pageCount: json['pageCount'],
//       averageRating: json['averageRating'],
//       ratingsCount: json['ratingsCount'],
//       imageLinks:
//           json['imageLinks'] != null
//               ? ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>)
//               : null,
//       categories: (json['categories'] as List?)?.cast<String>(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'authors': authors,
//       'publisher': publisher,
//       'publishedDate': publishedDate,
//       'description': description,
//       'pageCount': pageCount,
//       'averageRating': averageRating,
//       'ratingsCount': ratingsCount,
//       'imageLinks': imageLinks?.toJson(),
//       'categories': categories,
//     };
//   }

//   VolumeInfoEntity toEntity() {
//     return VolumeInfoEntity(
//       title: title,
//       authors: authors,
//       publisher: publisher,
//       publishedDate: publishedDate,
//       description: description,
//       pageCount: pageCount,
//       averageRating: averageRating,
//       ratingsCount: ratingsCount,
//       imageLinks: imageLinks?.toEntity(),
//       categories: categories,
//     );
//   }
// }

@freezed
abstract class ImageLinks with _$ImageLinks {
  factory ImageLinks({String? thumbnail}) = _ImageLinks;

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}

// class ImageLinks {
//   final String? thumbnail;

//   ImageLinks({this.thumbnail});

//   factory ImageLinks.fromJson(Map<String, dynamic> json) {
//     return ImageLinks(thumbnail: json['thumbnail'] as String?);
//   }

//   Map<String, dynamic> toJson() => {'thumbnail': thumbnail};

//   ImageLinksEntity toEntity() {
//     return ImageLinksEntity(thumbnail: thumbnail);
//   }
// }

@freezed
abstract class SaleInfo with _$SaleInfo {
  factory SaleInfo({
    String? country,
    String? saleability,
    bool? isEbook,
    ListPrice? listPrice,
    ListPrice? retailPrice,
    String? buyLink,
  }) = _SaleInfo;

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);
}

// class SaleInfo {
//   final String? country;
//   final String? saleability;
//   final bool? isEbook;
//   final ListPrice? listPrice;
//   final ListPrice? retailPrice;
//   final String? buyLink;

//   SaleInfo({
//     this.country,
//     this.saleability,
//     this.isEbook,
//     this.listPrice,
//     this.retailPrice,
//     this.buyLink,
//   });

//   factory SaleInfo.fromJson(Map<String, dynamic> json) {
//     return SaleInfo(
//       country: json['country'] as String?,
//       saleability: json['saleability'] as String?,
//       isEbook: json['isEbook'] as bool?,
//       listPrice:
//           json['listPrice'] != null
//               ? ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>)
//               : null,
//       retailPrice:
//           json['retailPrice'] != null
//               ? ListPrice.fromJson(json['retailPrice'] as Map<String, dynamic>)
//               : null,
//       buyLink: json['buyLink'] as String?,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'country': country,
//       'saleability': saleability,
//       'isEbook': isEbook,
//       'listPrice': listPrice?.toJson(),
//       'retailPrice': retailPrice?.toJson(),
//       'buyLink': buyLink,
//     };
//   }

//   SaleInfoEntity toEntity() {
//     return SaleInfoEntity(
//       country: country,
//       saleability: saleability,
//       isEbook: isEbook,
//       listPrice: listPrice?.toEntity(),
//       retailPrice: retailPrice?.toEntity(),
//       buyLink: buyLink,
//     );
//   }
// }

@freezed
abstract class ListPrice with _$ListPrice {
  factory ListPrice({num? amount, String? currencyCode}) = _ListPrice;

  factory ListPrice.fromJson(Map<String, dynamic> json) =>
      _$ListPriceFromJson(json);
}

// class ListPrice {
//   final num? amount;
//   final String? currencyCode;

//   ListPrice({this.amount, this.currencyCode});

//   factory ListPrice.fromJson(Map<String, dynamic> json) {
//     return ListPrice(
//       amount: json['amount'],
//       currencyCode: json['currencyCode'] as String?,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {'amount': amount, 'currencyCode': currencyCode};
//   }

//   ListPriceEntity toEntity() {
//     return ListPriceEntity(amount: amount, currencyCode: currencyCode);
//   }
// }
