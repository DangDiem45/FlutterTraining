class BookEntity {
  final String? kind;
  final num? totalItems;
  final List<BookItemsEntity>? items;

  BookEntity({this.kind, this.totalItems, this.items});
}

class BookItemsEntity {
  final String? id;
  final VolumeInfoEntity? volumeInfo;
  final SaleInfoEntity? saleInfo;

  BookItemsEntity({this.id, this.volumeInfo, this.saleInfo});
}

class VolumeInfoEntity {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final num? pageCount;
  final num? averageRating;
  final num? ratingsCount;
  final ImageLinksEntity? imageLinks;
  final List<String>? categories;

  VolumeInfoEntity({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.pageCount,
    this.averageRating,
    this.ratingsCount,
    this.imageLinks,
    this.categories,
  });
}

class ImageLinksEntity {
  final String? thumbnail;

  ImageLinksEntity({this.thumbnail});
}

class SaleInfoEntity {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPriceEntity? listPrice;
  final ListPriceEntity? retailPrice;
  final String? buyLink;

  SaleInfoEntity({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
  });
}

class ListPriceEntity {
  final num? amount;
  final String? currencyCode;

  ListPriceEntity({this.amount, this.currencyCode});
}
