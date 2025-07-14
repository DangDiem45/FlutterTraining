// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {

 String? get query; List<Product>? get searchResults; List<String>? get recentSearches; bool? get isSearching; bool? get showFilters; String? get sortBy; double? get minPrice; double? get maxPrice; List<String>? get selectedSizes; String? get selectedCategory; List<String>? get suggestions;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.searchResults, searchResults)&&const DeepCollectionEquality().equals(other.recentSearches, recentSearches)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.showFilters, showFilters) || other.showFilters == showFilters)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&const DeepCollectionEquality().equals(other.selectedSizes, selectedSizes)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&const DeepCollectionEquality().equals(other.suggestions, suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(searchResults),const DeepCollectionEquality().hash(recentSearches),isSearching,showFilters,sortBy,minPrice,maxPrice,const DeepCollectionEquality().hash(selectedSizes),selectedCategory,const DeepCollectionEquality().hash(suggestions));

@override
String toString() {
  return 'SearchState(query: $query, searchResults: $searchResults, recentSearches: $recentSearches, isSearching: $isSearching, showFilters: $showFilters, sortBy: $sortBy, minPrice: $minPrice, maxPrice: $maxPrice, selectedSizes: $selectedSizes, selectedCategory: $selectedCategory, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 String? query, List<Product>? searchResults, List<String>? recentSearches, bool? isSearching, bool? showFilters, String? sortBy, double? minPrice, double? maxPrice, List<String>? selectedSizes, String? selectedCategory, List<String>? suggestions
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? searchResults = freezed,Object? recentSearches = freezed,Object? isSearching = freezed,Object? showFilters = freezed,Object? sortBy = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? selectedSizes = freezed,Object? selectedCategory = freezed,Object? suggestions = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,searchResults: freezed == searchResults ? _self.searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as List<Product>?,recentSearches: freezed == recentSearches ? _self.recentSearches : recentSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,isSearching: freezed == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool?,showFilters: freezed == showFilters ? _self.showFilters : showFilters // ignore: cast_nullable_to_non_nullable
as bool?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,selectedSizes: freezed == selectedSizes ? _self.selectedSizes : selectedSizes // ignore: cast_nullable_to_non_nullable
as List<String>?,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String?,suggestions: freezed == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({this.query, final  List<Product>? searchResults, final  List<String>? recentSearches, this.isSearching, this.showFilters, this.sortBy, this.minPrice, this.maxPrice, final  List<String>? selectedSizes, this.selectedCategory, final  List<String>? suggestions}): _searchResults = searchResults,_recentSearches = recentSearches,_selectedSizes = selectedSizes,_suggestions = suggestions;
  

@override final  String? query;
 final  List<Product>? _searchResults;
@override List<Product>? get searchResults {
  final value = _searchResults;
  if (value == null) return null;
  if (_searchResults is EqualUnmodifiableListView) return _searchResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _recentSearches;
@override List<String>? get recentSearches {
  final value = _recentSearches;
  if (value == null) return null;
  if (_recentSearches is EqualUnmodifiableListView) return _recentSearches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? isSearching;
@override final  bool? showFilters;
@override final  String? sortBy;
@override final  double? minPrice;
@override final  double? maxPrice;
 final  List<String>? _selectedSizes;
@override List<String>? get selectedSizes {
  final value = _selectedSizes;
  if (value == null) return null;
  if (_selectedSizes is EqualUnmodifiableListView) return _selectedSizes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? selectedCategory;
 final  List<String>? _suggestions;
@override List<String>? get suggestions {
  final value = _suggestions;
  if (value == null) return null;
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._searchResults, _searchResults)&&const DeepCollectionEquality().equals(other._recentSearches, _recentSearches)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.showFilters, showFilters) || other.showFilters == showFilters)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&const DeepCollectionEquality().equals(other._selectedSizes, _selectedSizes)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_searchResults),const DeepCollectionEquality().hash(_recentSearches),isSearching,showFilters,sortBy,minPrice,maxPrice,const DeepCollectionEquality().hash(_selectedSizes),selectedCategory,const DeepCollectionEquality().hash(_suggestions));

@override
String toString() {
  return 'SearchState(query: $query, searchResults: $searchResults, recentSearches: $recentSearches, isSearching: $isSearching, showFilters: $showFilters, sortBy: $sortBy, minPrice: $minPrice, maxPrice: $maxPrice, selectedSizes: $selectedSizes, selectedCategory: $selectedCategory, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 String? query, List<Product>? searchResults, List<String>? recentSearches, bool? isSearching, bool? showFilters, String? sortBy, double? minPrice, double? maxPrice, List<String>? selectedSizes, String? selectedCategory, List<String>? suggestions
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? searchResults = freezed,Object? recentSearches = freezed,Object? isSearching = freezed,Object? showFilters = freezed,Object? sortBy = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? selectedSizes = freezed,Object? selectedCategory = freezed,Object? suggestions = freezed,}) {
  return _then(_SearchState(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,searchResults: freezed == searchResults ? _self._searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as List<Product>?,recentSearches: freezed == recentSearches ? _self._recentSearches : recentSearches // ignore: cast_nullable_to_non_nullable
as List<String>?,isSearching: freezed == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool?,showFilters: freezed == showFilters ? _self.showFilters : showFilters // ignore: cast_nullable_to_non_nullable
as bool?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,selectedSizes: freezed == selectedSizes ? _self._selectedSizes : selectedSizes // ignore: cast_nullable_to_non_nullable
as List<String>?,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String?,suggestions: freezed == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
