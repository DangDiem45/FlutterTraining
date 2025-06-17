import 'package:book_app/features/book/domain/entities/books.dart';

class BookModel {
  String? kind;
  num? totalItems;
  List<Items>? items;

  BookModel({this.kind, this.totalItems, this.items});

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    totalItems = json['totalItems'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['totalItems'] = totalItems;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  BookEntity toEntity() {
    return BookEntity(
      kind: kind,
      totalItems: totalItems,
      items: items?.map((item) => item.toEntity()).toList(),
    );
  }
}

class Items {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Items({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  Items.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo =
        json['volumeInfo'] != null
            ? VolumeInfo.fromJson(json['volumeInfo'])
            : null;
    saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo =
        json['accessInfo'] != null
            ? AccessInfo.fromJson(json['accessInfo'])
            : null;
    searchInfo =
        json['searchInfo'] != null
            ? SearchInfo.fromJson(json['searchInfo'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

  BookItemsEntity toEntity() {
    return BookItemsEntity(
      kind: kind,
      id: id,
      etag: etag,
      selfLink: selfLink,
      volumeInfo: volumeInfo?.toEntity(),
      saleInfo: saleInfo?.toEntity(),
      accessInfo: accessInfo?.toEntity(),
      searchInfo: searchInfo?.toEntity(),
    );
  }
}

class VolumeInfo {
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  num? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  num? averageRating;
  num? ratingsCount;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
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

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    subtitle = json['subtitle'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes =
        json['readingModes'] != null
            ? ReadingModes.fromJson(json['readingModes'])
            : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    maturityRating = json['maturityRating'];
    averageRating = json['averageRating'];
    ratingsCount = json['ratingsCount'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary =
        json['panelizationSummary'] != null
            ? PanelizationSummary.fromJson(json['panelizationSummary'])
            : null;
    imageLinks =
        json['imageLinks'] != null
            ? ImageLinks.fromJson(json['imageLinks'])
            : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['subtitle'] = subtitle;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] =
          industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['maturityRating'] = maturityRating;
    map['averageRating'] = averageRating;
    map['ratingsCount'] = ratingsCount;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }

  VolumeInfoEntity toEntity() {
    return VolumeInfoEntity(
      title: title,
      subtitle: subtitle,
      authors: authors,
      publisher: publisher,
      publishedDate: publishedDate,
      description: description,
      industryIdentifiers:
          industryIdentifiers?.map((e) => e.toEntity()).toList(),
      readingModes: readingModes?.toEntity(),
      pageCount: pageCount,
      printType: printType,
      categories: categories,
      maturityRating: maturityRating,
      averageRating: averageRating,
      ratingsCount: ratingsCount,
      allowAnonLogging: allowAnonLogging,
      contentVersion: contentVersion,
      panelizationSummary: panelizationSummary?.toEntity(),
      imageLinks: imageLinks?.toEntity(),
      language: language,
      previewLink: previewLink,
      infoLink: infoLink,
      canonicalVolumeLink: canonicalVolumeLink,
    );
  }
}

class IndustryIdentifiers {
  String? type;
  String? identifier;

  IndustryIdentifiers({this.type, this.identifier});

  IndustryIdentifiers.fromJson(dynamic json) {
    type = json['type'];
    identifier = json['identifier'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['identifier'] = identifier;
    return map;
  }

  IndustryIdentifierEntity toEntity() {
    return IndustryIdentifierEntity(type: type, identifier: identifier);
  }
}

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({this.text, this.image});

  ReadingModes.fromJson(dynamic json) {
    text = json['text'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['image'] = image;
    return map;
  }

  ReadingModesEntity toEntity() {
    return ReadingModesEntity(text: text, image: image);
  }
}

class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});

  PanelizationSummary.fromJson(dynamic json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = containsEpubBubbles;
    map['containsImageBubbles'] = containsImageBubbles;
    return map;
  }

  PanelizationSummaryEntity toEntity() {
    return PanelizationSummaryEntity(
      containsEpubBubbles: containsEpubBubbles,
      containsImageBubbles: containsImageBubbles,
    );
  }
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }

  ImageLinksEntity toEntity() {
    return ImageLinksEntity(
      smallThumbnail: smallThumbnail,
      thumbnail: thumbnail,
    );
  }
}

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  ListPrice? listPrice;
  ListPrice? retailPrice;
  String? buyLink;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
  });

  SaleInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    listPrice =
        json['listPrice'] != null
            ? ListPrice.fromJson(json['listPrice'])
            : null;
    retailPrice =
        json['retailPrice'] != null
            ? ListPrice.fromJson(json['retailPrice'])
            : null;
    buyLink = json['buyLink'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    if (listPrice != null) {
      map['listPrice'] = listPrice?.toJson();
    }
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    map['buyLink'] = buyLink;
    return map;
  }

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

class ListPrice {
  num? amount;
  String? currencyCode;

  ListPrice({this.amount, this.currencyCode});

  ListPrice.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currencyCode = json['currencyCode'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = amount;
    map['currencyCode'] = currencyCode;
    return map;
  }

  ListPriceEntity toEntity() {
    return ListPriceEntity(amount: amount, currencyCode: currencyCode);
  }
}

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({
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

  AccessInfo.fromJson(dynamic json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['viewability'] = viewability;
    map['embeddable'] = embeddable;
    map['publicDomain'] = publicDomain;
    map['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      map['epub'] = epub?.toJson();
    }
    if (pdf != null) {
      map['pdf'] = pdf?.toJson();
    }
    map['webReaderLink'] = webReaderLink;
    map['accessViewStatus'] = accessViewStatus;
    map['quoteSharingAllowed'] = quoteSharingAllowed;
    return map;
  }

  AccessInfoEntity toEntity() {
    return AccessInfoEntity(
      country: country,
      viewability: viewability,
      embeddable: embeddable,
      publicDomain: publicDomain,
      textToSpeechPermission: textToSpeechPermission,
      epub: epub?.toEntity(),
      pdf: pdf?.toEntity(),
      webReaderLink: webReaderLink,
      accessViewStatus: accessViewStatus,
      quoteSharingAllowed: quoteSharingAllowed,
    );
  }
}

class Epub {
  bool? isAvailable;

  Epub({this.isAvailable});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }

  EpubEntity toEntity() {
    return EpubEntity(isAvailable: isAvailable);
  }
}

class Pdf {
  bool? isAvailable;

  Pdf({this.isAvailable});

  Pdf.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }

  PdfEntity toEntity() {
    return PdfEntity(isAvailable: isAvailable);
  }
}

class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }

  SearchInfoEntity toEntity() {
    return SearchInfoEntity(textSnippet: textSnippet);
  }
}
