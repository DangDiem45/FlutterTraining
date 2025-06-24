import 'package:book_app/features/book/domain/entities/books.dart';
import 'package:book_app/features/book/data/models/books.dart';

extension BookModelMapper on BookModel {
  BookEntity toEntity() {
    return BookEntity(
      kind: kind,
      totalItems: totalItems,
      items: items?.map((e) => e.toEntity()).toList(),
    );
  }
}

extension ItemsMapper on Items {
  BookItemsEntity toEntity() {
    return BookItemsEntity(
      id: id,
      volumeInfo: volumeInfo?.toEntity(),
      saleInfo: saleInfo?.toEntity(),
    );
  }
}

extension VolumeInfoMapper on VolumeInfo {
  VolumeInfoEntity toEntity() {
    return VolumeInfoEntity(
      title: title,
      authors: authors,
      publisher: publisher,
      publishedDate: publishedDate,
      description: description,
      pageCount: pageCount,
      averageRating: averageRating,
      ratingsCount: ratingsCount,
      imageLinks: imageLinks?.toEntity(),
      categories: categories,
    );
  }
}

extension ImageLinksMapper on ImageLinks {
  ImageLinksEntity toEntity() {
    return ImageLinksEntity(thumbnail: thumbnail);
  }
}

extension SaleInfoMapper on SaleInfo {
  SaleInfoEntity toEntity() {
    return SaleInfoEntity(
      country: country,
      saleability: saleability,
      isEbook: isEbook,
      listPrice: listPrice?.toEntity(),
      retailPrice: retailPrice?.toEntity(),
      buyLink: buyLink,
    );
  }
}

extension ListPriceMapper on ListPrice {
  ListPriceEntity toEntity() {
    return ListPriceEntity(amount: amount, currencyCode: currencyCode);
  }
}
