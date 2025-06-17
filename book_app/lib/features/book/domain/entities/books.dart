class BookEntity {
  final String? kind;
  final num? totalItems;
  final List<BookItemsEntity>? items;

  BookEntity({this.kind, this.totalItems, this.items});
}

class BookItemsEntity {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfoEntity? volumeInfo;
  final SaleInfoEntity? saleInfo;
  final AccessInfoEntity? accessInfo;
  final SearchInfoEntity? searchInfo;

  BookItemsEntity({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });
}

class VolumeInfoEntity {
  final String? title;
  final String? subtitle;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifierEntity>? industryIdentifiers;
  final ReadingModesEntity? readingModes;
  final num? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final num? averageRating;
  final num? ratingsCount;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummaryEntity? panelizationSummary;
  final ImageLinksEntity? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  VolumeInfoEntity({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.averageRating,
    this.ratingsCount,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });
}

class IndustryIdentifierEntity {
  final String? type;
  final String? identifier;

  IndustryIdentifierEntity({this.type, this.identifier});
}

class ReadingModesEntity {
  final bool? text;
  final bool? image;

  ReadingModesEntity({this.text, this.image});
}

class PanelizationSummaryEntity {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  PanelizationSummaryEntity({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });
}

class ImageLinksEntity {
  final String? smallThumbnail;
  final String? thumbnail;

  ImageLinksEntity({this.smallThumbnail, this.thumbnail});
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

class AccessInfoEntity {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final EpubEntity? epub;
  final PdfEntity? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  AccessInfoEntity({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });
}

class EpubEntity {
  final bool? isAvailable;

  EpubEntity({this.isAvailable});
}

class PdfEntity {
  final bool? isAvailable;

  PdfEntity({this.isAvailable});
}

class SearchInfoEntity {
  final String? textSnippet;

  SearchInfoEntity({this.textSnippet});
}
