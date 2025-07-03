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

@freezed
abstract class Items with _$Items {
  factory Items({String? id, VolumeInfo? volumeInfo, SaleInfo? saleInfo}) =
      _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

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

@freezed
abstract class ImageLinks with _$ImageLinks {
  factory ImageLinks({String? thumbnail}) = _ImageLinks;

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}

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

@freezed
abstract class ListPrice with _$ListPrice {
  factory ListPrice({num? amount, String? currencyCode}) = _ListPrice;

  factory ListPrice.fromJson(Map<String, dynamic> json) =>
      _$ListPriceFromJson(json);
}
