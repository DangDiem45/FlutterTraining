// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookModel {

 String? get kind; num? get totalItems; List<Items>? get items;
/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookModelCopyWith<BookModel> get copyWith => _$BookModelCopyWithImpl<BookModel>(this as BookModel, _$identity);

  /// Serializes this BookModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,totalItems,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'BookModel(kind: $kind, totalItems: $totalItems, items: $items)';
}


}

/// @nodoc
abstract mixin class $BookModelCopyWith<$Res>  {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) _then) = _$BookModelCopyWithImpl;
@useResult
$Res call({
 String? kind, num? totalItems, List<Items>? items
});




}
/// @nodoc
class _$BookModelCopyWithImpl<$Res>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._self, this._then);

  final BookModel _self;
  final $Res Function(BookModel) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = freezed,Object? totalItems = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as num?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Items>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BookModel implements BookModel {
   _BookModel({this.kind, this.totalItems, final  List<Items>? items}): _items = items;
  factory _BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);

@override final  String? kind;
@override final  num? totalItems;
 final  List<Items>? _items;
@override List<Items>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookModelCopyWith<_BookModel> get copyWith => __$BookModelCopyWithImpl<_BookModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookModel&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,totalItems,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'BookModel(kind: $kind, totalItems: $totalItems, items: $items)';
}


}

/// @nodoc
abstract mixin class _$BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$BookModelCopyWith(_BookModel value, $Res Function(_BookModel) _then) = __$BookModelCopyWithImpl;
@override @useResult
$Res call({
 String? kind, num? totalItems, List<Items>? items
});




}
/// @nodoc
class __$BookModelCopyWithImpl<$Res>
    implements _$BookModelCopyWith<$Res> {
  __$BookModelCopyWithImpl(this._self, this._then);

  final _BookModel _self;
  final $Res Function(_BookModel) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = freezed,Object? totalItems = freezed,Object? items = freezed,}) {
  return _then(_BookModel(
kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as num?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Items>?,
  ));
}


}


/// @nodoc
mixin _$Items {

 String? get id; VolumeInfo? get volumeInfo; SaleInfo? get saleInfo;
/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemsCopyWith<Items> get copyWith => _$ItemsCopyWithImpl<Items>(this as Items, _$identity);

  /// Serializes this Items to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Items&&(identical(other.id, id) || other.id == id)&&(identical(other.volumeInfo, volumeInfo) || other.volumeInfo == volumeInfo)&&(identical(other.saleInfo, saleInfo) || other.saleInfo == saleInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,volumeInfo,saleInfo);

@override
String toString() {
  return 'Items(id: $id, volumeInfo: $volumeInfo, saleInfo: $saleInfo)';
}


}

/// @nodoc
abstract mixin class $ItemsCopyWith<$Res>  {
  factory $ItemsCopyWith(Items value, $Res Function(Items) _then) = _$ItemsCopyWithImpl;
@useResult
$Res call({
 String? id, VolumeInfo? volumeInfo, SaleInfo? saleInfo
});


$VolumeInfoCopyWith<$Res>? get volumeInfo;$SaleInfoCopyWith<$Res>? get saleInfo;

}
/// @nodoc
class _$ItemsCopyWithImpl<$Res>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._self, this._then);

  final Items _self;
  final $Res Function(Items) _then;

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? volumeInfo = freezed,Object? saleInfo = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,volumeInfo: freezed == volumeInfo ? _self.volumeInfo : volumeInfo // ignore: cast_nullable_to_non_nullable
as VolumeInfo?,saleInfo: freezed == saleInfo ? _self.saleInfo : saleInfo // ignore: cast_nullable_to_non_nullable
as SaleInfo?,
  ));
}
/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VolumeInfoCopyWith<$Res>? get volumeInfo {
    if (_self.volumeInfo == null) {
    return null;
  }

  return $VolumeInfoCopyWith<$Res>(_self.volumeInfo!, (value) {
    return _then(_self.copyWith(volumeInfo: value));
  });
}/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleInfoCopyWith<$Res>? get saleInfo {
    if (_self.saleInfo == null) {
    return null;
  }

  return $SaleInfoCopyWith<$Res>(_self.saleInfo!, (value) {
    return _then(_self.copyWith(saleInfo: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Items implements Items {
   _Items({this.id, this.volumeInfo, this.saleInfo});
  factory _Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

@override final  String? id;
@override final  VolumeInfo? volumeInfo;
@override final  SaleInfo? saleInfo;

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsCopyWith<_Items> get copyWith => __$ItemsCopyWithImpl<_Items>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Items&&(identical(other.id, id) || other.id == id)&&(identical(other.volumeInfo, volumeInfo) || other.volumeInfo == volumeInfo)&&(identical(other.saleInfo, saleInfo) || other.saleInfo == saleInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,volumeInfo,saleInfo);

@override
String toString() {
  return 'Items(id: $id, volumeInfo: $volumeInfo, saleInfo: $saleInfo)';
}


}

/// @nodoc
abstract mixin class _$ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$ItemsCopyWith(_Items value, $Res Function(_Items) _then) = __$ItemsCopyWithImpl;
@override @useResult
$Res call({
 String? id, VolumeInfo? volumeInfo, SaleInfo? saleInfo
});


@override $VolumeInfoCopyWith<$Res>? get volumeInfo;@override $SaleInfoCopyWith<$Res>? get saleInfo;

}
/// @nodoc
class __$ItemsCopyWithImpl<$Res>
    implements _$ItemsCopyWith<$Res> {
  __$ItemsCopyWithImpl(this._self, this._then);

  final _Items _self;
  final $Res Function(_Items) _then;

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? volumeInfo = freezed,Object? saleInfo = freezed,}) {
  return _then(_Items(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,volumeInfo: freezed == volumeInfo ? _self.volumeInfo : volumeInfo // ignore: cast_nullable_to_non_nullable
as VolumeInfo?,saleInfo: freezed == saleInfo ? _self.saleInfo : saleInfo // ignore: cast_nullable_to_non_nullable
as SaleInfo?,
  ));
}

/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VolumeInfoCopyWith<$Res>? get volumeInfo {
    if (_self.volumeInfo == null) {
    return null;
  }

  return $VolumeInfoCopyWith<$Res>(_self.volumeInfo!, (value) {
    return _then(_self.copyWith(volumeInfo: value));
  });
}/// Create a copy of Items
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleInfoCopyWith<$Res>? get saleInfo {
    if (_self.saleInfo == null) {
    return null;
  }

  return $SaleInfoCopyWith<$Res>(_self.saleInfo!, (value) {
    return _then(_self.copyWith(saleInfo: value));
  });
}
}


/// @nodoc
mixin _$VolumeInfo {

 String? get title; List<String>? get authors; String? get publisher; String? get publishedDate; String? get description; num? get pageCount; num? get averageRating; num? get ratingsCount; ImageLinks? get imageLinks; List<String>? get categories;
/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VolumeInfoCopyWith<VolumeInfo> get copyWith => _$VolumeInfoCopyWithImpl<VolumeInfo>(this as VolumeInfo, _$identity);

  /// Serializes this VolumeInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VolumeInfo&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.authors, authors)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.ratingsCount, ratingsCount) || other.ratingsCount == ratingsCount)&&(identical(other.imageLinks, imageLinks) || other.imageLinks == imageLinks)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(authors),publisher,publishedDate,description,pageCount,averageRating,ratingsCount,imageLinks,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'VolumeInfo(title: $title, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, pageCount: $pageCount, averageRating: $averageRating, ratingsCount: $ratingsCount, imageLinks: $imageLinks, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $VolumeInfoCopyWith<$Res>  {
  factory $VolumeInfoCopyWith(VolumeInfo value, $Res Function(VolumeInfo) _then) = _$VolumeInfoCopyWithImpl;
@useResult
$Res call({
 String? title, List<String>? authors, String? publisher, String? publishedDate, String? description, num? pageCount, num? averageRating, num? ratingsCount, ImageLinks? imageLinks, List<String>? categories
});


$ImageLinksCopyWith<$Res>? get imageLinks;

}
/// @nodoc
class _$VolumeInfoCopyWithImpl<$Res>
    implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._self, this._then);

  final VolumeInfo _self;
  final $Res Function(VolumeInfo) _then;

/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? authors = freezed,Object? publisher = freezed,Object? publishedDate = freezed,Object? description = freezed,Object? pageCount = freezed,Object? averageRating = freezed,Object? ratingsCount = freezed,Object? imageLinks = freezed,Object? categories = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,authors: freezed == authors ? _self.authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,publishedDate: freezed == publishedDate ? _self.publishedDate : publishedDate // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,pageCount: freezed == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as num?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as num?,ratingsCount: freezed == ratingsCount ? _self.ratingsCount : ratingsCount // ignore: cast_nullable_to_non_nullable
as num?,imageLinks: freezed == imageLinks ? _self.imageLinks : imageLinks // ignore: cast_nullable_to_non_nullable
as ImageLinks?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageLinksCopyWith<$Res>? get imageLinks {
    if (_self.imageLinks == null) {
    return null;
  }

  return $ImageLinksCopyWith<$Res>(_self.imageLinks!, (value) {
    return _then(_self.copyWith(imageLinks: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _VolumeInfo implements VolumeInfo {
   _VolumeInfo({this.title, final  List<String>? authors, this.publisher, this.publishedDate, this.description, this.pageCount, this.averageRating, this.ratingsCount, this.imageLinks, final  List<String>? categories}): _authors = authors,_categories = categories;
  factory _VolumeInfo.fromJson(Map<String, dynamic> json) => _$VolumeInfoFromJson(json);

@override final  String? title;
 final  List<String>? _authors;
@override List<String>? get authors {
  final value = _authors;
  if (value == null) return null;
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? publisher;
@override final  String? publishedDate;
@override final  String? description;
@override final  num? pageCount;
@override final  num? averageRating;
@override final  num? ratingsCount;
@override final  ImageLinks? imageLinks;
 final  List<String>? _categories;
@override List<String>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VolumeInfoCopyWith<_VolumeInfo> get copyWith => __$VolumeInfoCopyWithImpl<_VolumeInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VolumeInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VolumeInfo&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._authors, _authors)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.publishedDate, publishedDate) || other.publishedDate == publishedDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.ratingsCount, ratingsCount) || other.ratingsCount == ratingsCount)&&(identical(other.imageLinks, imageLinks) || other.imageLinks == imageLinks)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_authors),publisher,publishedDate,description,pageCount,averageRating,ratingsCount,imageLinks,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'VolumeInfo(title: $title, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, pageCount: $pageCount, averageRating: $averageRating, ratingsCount: $ratingsCount, imageLinks: $imageLinks, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$VolumeInfoCopyWith<$Res> implements $VolumeInfoCopyWith<$Res> {
  factory _$VolumeInfoCopyWith(_VolumeInfo value, $Res Function(_VolumeInfo) _then) = __$VolumeInfoCopyWithImpl;
@override @useResult
$Res call({
 String? title, List<String>? authors, String? publisher, String? publishedDate, String? description, num? pageCount, num? averageRating, num? ratingsCount, ImageLinks? imageLinks, List<String>? categories
});


@override $ImageLinksCopyWith<$Res>? get imageLinks;

}
/// @nodoc
class __$VolumeInfoCopyWithImpl<$Res>
    implements _$VolumeInfoCopyWith<$Res> {
  __$VolumeInfoCopyWithImpl(this._self, this._then);

  final _VolumeInfo _self;
  final $Res Function(_VolumeInfo) _then;

/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? authors = freezed,Object? publisher = freezed,Object? publishedDate = freezed,Object? description = freezed,Object? pageCount = freezed,Object? averageRating = freezed,Object? ratingsCount = freezed,Object? imageLinks = freezed,Object? categories = freezed,}) {
  return _then(_VolumeInfo(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,authors: freezed == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,publishedDate: freezed == publishedDate ? _self.publishedDate : publishedDate // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,pageCount: freezed == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as num?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as num?,ratingsCount: freezed == ratingsCount ? _self.ratingsCount : ratingsCount // ignore: cast_nullable_to_non_nullable
as num?,imageLinks: freezed == imageLinks ? _self.imageLinks : imageLinks // ignore: cast_nullable_to_non_nullable
as ImageLinks?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of VolumeInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageLinksCopyWith<$Res>? get imageLinks {
    if (_self.imageLinks == null) {
    return null;
  }

  return $ImageLinksCopyWith<$Res>(_self.imageLinks!, (value) {
    return _then(_self.copyWith(imageLinks: value));
  });
}
}


/// @nodoc
mixin _$ImageLinks {

 String? get thumbnail;
/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageLinksCopyWith<ImageLinks> get copyWith => _$ImageLinksCopyWithImpl<ImageLinks>(this as ImageLinks, _$identity);

  /// Serializes this ImageLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageLinks&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,thumbnail);

@override
String toString() {
  return 'ImageLinks(thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $ImageLinksCopyWith<$Res>  {
  factory $ImageLinksCopyWith(ImageLinks value, $Res Function(ImageLinks) _then) = _$ImageLinksCopyWithImpl;
@useResult
$Res call({
 String? thumbnail
});




}
/// @nodoc
class _$ImageLinksCopyWithImpl<$Res>
    implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._self, this._then);

  final ImageLinks _self;
  final $Res Function(ImageLinks) _then;

/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? thumbnail = freezed,}) {
  return _then(_self.copyWith(
thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ImageLinks implements ImageLinks {
   _ImageLinks({this.thumbnail});
  factory _ImageLinks.fromJson(Map<String, dynamic> json) => _$ImageLinksFromJson(json);

@override final  String? thumbnail;

/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageLinksCopyWith<_ImageLinks> get copyWith => __$ImageLinksCopyWithImpl<_ImageLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageLinks&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,thumbnail);

@override
String toString() {
  return 'ImageLinks(thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$ImageLinksCopyWith<$Res> implements $ImageLinksCopyWith<$Res> {
  factory _$ImageLinksCopyWith(_ImageLinks value, $Res Function(_ImageLinks) _then) = __$ImageLinksCopyWithImpl;
@override @useResult
$Res call({
 String? thumbnail
});




}
/// @nodoc
class __$ImageLinksCopyWithImpl<$Res>
    implements _$ImageLinksCopyWith<$Res> {
  __$ImageLinksCopyWithImpl(this._self, this._then);

  final _ImageLinks _self;
  final $Res Function(_ImageLinks) _then;

/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? thumbnail = freezed,}) {
  return _then(_ImageLinks(
thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SaleInfo {

 String? get country; String? get saleability; bool? get isEbook; ListPrice? get listPrice; ListPrice? get retailPrice; String? get buyLink;
/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleInfoCopyWith<SaleInfo> get copyWith => _$SaleInfoCopyWithImpl<SaleInfo>(this as SaleInfo, _$identity);

  /// Serializes this SaleInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleInfo&&(identical(other.country, country) || other.country == country)&&(identical(other.saleability, saleability) || other.saleability == saleability)&&(identical(other.isEbook, isEbook) || other.isEbook == isEbook)&&(identical(other.listPrice, listPrice) || other.listPrice == listPrice)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice)&&(identical(other.buyLink, buyLink) || other.buyLink == buyLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,saleability,isEbook,listPrice,retailPrice,buyLink);

@override
String toString() {
  return 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook, listPrice: $listPrice, retailPrice: $retailPrice, buyLink: $buyLink)';
}


}

/// @nodoc
abstract mixin class $SaleInfoCopyWith<$Res>  {
  factory $SaleInfoCopyWith(SaleInfo value, $Res Function(SaleInfo) _then) = _$SaleInfoCopyWithImpl;
@useResult
$Res call({
 String? country, String? saleability, bool? isEbook, ListPrice? listPrice, ListPrice? retailPrice, String? buyLink
});


$ListPriceCopyWith<$Res>? get listPrice;$ListPriceCopyWith<$Res>? get retailPrice;

}
/// @nodoc
class _$SaleInfoCopyWithImpl<$Res>
    implements $SaleInfoCopyWith<$Res> {
  _$SaleInfoCopyWithImpl(this._self, this._then);

  final SaleInfo _self;
  final $Res Function(SaleInfo) _then;

/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = freezed,Object? saleability = freezed,Object? isEbook = freezed,Object? listPrice = freezed,Object? retailPrice = freezed,Object? buyLink = freezed,}) {
  return _then(_self.copyWith(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,saleability: freezed == saleability ? _self.saleability : saleability // ignore: cast_nullable_to_non_nullable
as String?,isEbook: freezed == isEbook ? _self.isEbook : isEbook // ignore: cast_nullable_to_non_nullable
as bool?,listPrice: freezed == listPrice ? _self.listPrice : listPrice // ignore: cast_nullable_to_non_nullable
as ListPrice?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as ListPrice?,buyLink: freezed == buyLink ? _self.buyLink : buyLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListPriceCopyWith<$Res>? get listPrice {
    if (_self.listPrice == null) {
    return null;
  }

  return $ListPriceCopyWith<$Res>(_self.listPrice!, (value) {
    return _then(_self.copyWith(listPrice: value));
  });
}/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListPriceCopyWith<$Res>? get retailPrice {
    if (_self.retailPrice == null) {
    return null;
  }

  return $ListPriceCopyWith<$Res>(_self.retailPrice!, (value) {
    return _then(_self.copyWith(retailPrice: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SaleInfo implements SaleInfo {
   _SaleInfo({this.country, this.saleability, this.isEbook, this.listPrice, this.retailPrice, this.buyLink});
  factory _SaleInfo.fromJson(Map<String, dynamic> json) => _$SaleInfoFromJson(json);

@override final  String? country;
@override final  String? saleability;
@override final  bool? isEbook;
@override final  ListPrice? listPrice;
@override final  ListPrice? retailPrice;
@override final  String? buyLink;

/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleInfoCopyWith<_SaleInfo> get copyWith => __$SaleInfoCopyWithImpl<_SaleInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaleInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleInfo&&(identical(other.country, country) || other.country == country)&&(identical(other.saleability, saleability) || other.saleability == saleability)&&(identical(other.isEbook, isEbook) || other.isEbook == isEbook)&&(identical(other.listPrice, listPrice) || other.listPrice == listPrice)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice)&&(identical(other.buyLink, buyLink) || other.buyLink == buyLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,saleability,isEbook,listPrice,retailPrice,buyLink);

@override
String toString() {
  return 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook, listPrice: $listPrice, retailPrice: $retailPrice, buyLink: $buyLink)';
}


}

/// @nodoc
abstract mixin class _$SaleInfoCopyWith<$Res> implements $SaleInfoCopyWith<$Res> {
  factory _$SaleInfoCopyWith(_SaleInfo value, $Res Function(_SaleInfo) _then) = __$SaleInfoCopyWithImpl;
@override @useResult
$Res call({
 String? country, String? saleability, bool? isEbook, ListPrice? listPrice, ListPrice? retailPrice, String? buyLink
});


@override $ListPriceCopyWith<$Res>? get listPrice;@override $ListPriceCopyWith<$Res>? get retailPrice;

}
/// @nodoc
class __$SaleInfoCopyWithImpl<$Res>
    implements _$SaleInfoCopyWith<$Res> {
  __$SaleInfoCopyWithImpl(this._self, this._then);

  final _SaleInfo _self;
  final $Res Function(_SaleInfo) _then;

/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = freezed,Object? saleability = freezed,Object? isEbook = freezed,Object? listPrice = freezed,Object? retailPrice = freezed,Object? buyLink = freezed,}) {
  return _then(_SaleInfo(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,saleability: freezed == saleability ? _self.saleability : saleability // ignore: cast_nullable_to_non_nullable
as String?,isEbook: freezed == isEbook ? _self.isEbook : isEbook // ignore: cast_nullable_to_non_nullable
as bool?,listPrice: freezed == listPrice ? _self.listPrice : listPrice // ignore: cast_nullable_to_non_nullable
as ListPrice?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as ListPrice?,buyLink: freezed == buyLink ? _self.buyLink : buyLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListPriceCopyWith<$Res>? get listPrice {
    if (_self.listPrice == null) {
    return null;
  }

  return $ListPriceCopyWith<$Res>(_self.listPrice!, (value) {
    return _then(_self.copyWith(listPrice: value));
  });
}/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListPriceCopyWith<$Res>? get retailPrice {
    if (_self.retailPrice == null) {
    return null;
  }

  return $ListPriceCopyWith<$Res>(_self.retailPrice!, (value) {
    return _then(_self.copyWith(retailPrice: value));
  });
}
}


/// @nodoc
mixin _$ListPrice {

 num? get amount; String? get currencyCode;
/// Create a copy of ListPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListPriceCopyWith<ListPrice> get copyWith => _$ListPriceCopyWithImpl<ListPrice>(this as ListPrice, _$identity);

  /// Serializes this ListPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListPrice&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currencyCode);

@override
String toString() {
  return 'ListPrice(amount: $amount, currencyCode: $currencyCode)';
}


}

/// @nodoc
abstract mixin class $ListPriceCopyWith<$Res>  {
  factory $ListPriceCopyWith(ListPrice value, $Res Function(ListPrice) _then) = _$ListPriceCopyWithImpl;
@useResult
$Res call({
 num? amount, String? currencyCode
});




}
/// @nodoc
class _$ListPriceCopyWithImpl<$Res>
    implements $ListPriceCopyWith<$Res> {
  _$ListPriceCopyWithImpl(this._self, this._then);

  final ListPrice _self;
  final $Res Function(ListPrice) _then;

/// Create a copy of ListPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? currencyCode = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ListPrice implements ListPrice {
   _ListPrice({this.amount, this.currencyCode});
  factory _ListPrice.fromJson(Map<String, dynamic> json) => _$ListPriceFromJson(json);

@override final  num? amount;
@override final  String? currencyCode;

/// Create a copy of ListPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListPriceCopyWith<_ListPrice> get copyWith => __$ListPriceCopyWithImpl<_ListPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListPriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListPrice&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currencyCode);

@override
String toString() {
  return 'ListPrice(amount: $amount, currencyCode: $currencyCode)';
}


}

/// @nodoc
abstract mixin class _$ListPriceCopyWith<$Res> implements $ListPriceCopyWith<$Res> {
  factory _$ListPriceCopyWith(_ListPrice value, $Res Function(_ListPrice) _then) = __$ListPriceCopyWithImpl;
@override @useResult
$Res call({
 num? amount, String? currencyCode
});




}
/// @nodoc
class __$ListPriceCopyWithImpl<$Res>
    implements _$ListPriceCopyWith<$Res> {
  __$ListPriceCopyWithImpl(this._self, this._then);

  final _ListPrice _self;
  final $Res Function(_ListPrice) _then;

/// Create a copy of ListPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? currencyCode = freezed,}) {
  return _then(_ListPrice(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
