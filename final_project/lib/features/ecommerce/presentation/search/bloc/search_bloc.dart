import 'package:bloc/bloc.dart';
import 'package:final_project/features/ecommerce/presentation/search/bloc/search_event.dart';
import 'package:final_project/features/ecommerce/presentation/search/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial()) {
    on<PerformSearch>(_onPerformSearch);
    on<ClearSearch>(_onClearSearch);
    on<AddRecentSearch>(_onAddRecentSearch);
    on<RemoveRecentSearch>(_onRemoveRecentSearch);
    on<ToggleFilters>(_onToggleFilters);
    on<UpdateFilters>(_onUpdateFilters);
  }

  void _onPerformSearch(PerformSearch event, Emitter<SearchState> emit) {
    if (event.query.isEmpty) {
      emit(
        state.copyWith(
          searchResults: [],
          isSearching: false,
          query: '',
          suggestions: state.recentSearches,
        ),
      );
      return;
    }
    emit(state.copyWith(isSearching: true, query: event.query));
    final suggestions = event.allProducts
        .where(
          (product) =>
              product.title.toLowerCase().contains(event.query.toLowerCase()),
        )
        .map((product) => product.title)
        .take(5)
        .toList();
    if (suggestions.isEmpty) {
      suggestions.addAll(
        state.recentSearches!
            .where(
              (search) =>
                  search.toLowerCase().contains(event.query.toLowerCase()),
            )
            .take(5),
      );
    }
    final filteredResults = event.allProducts.where((product) {
      return product.title.toLowerCase().contains(event.query.toLowerCase()) ||
          product.description.toLowerCase().contains(
            event.query.toLowerCase(),
          ) ||
          product.category.toLowerCase().contains(event.query.toLowerCase());
    }).toList();
    emit(
      state.copyWith(
        suggestions: suggestions,
        searchResults: filteredResults,
        isSearching: false,
        query: event.query,
      ),
    );
  }

  void _onClearSearch(ClearSearch event, Emitter<SearchState> emit) {
    emit(
      state.copyWith(
        searchResults: [],
        isSearching: false,
        query: '',
        suggestions: state.recentSearches,
      ),
    );
  }

  void _onAddRecentSearch(AddRecentSearch event, Emitter<SearchState> emit) {
    if (event.search.isNotEmpty &&
        !state.recentSearches!.contains(event.search)) {
      final updatedRecentSearches = List<String>.from(
        state.recentSearches as Iterable,
      )..insert(0, event.search);
      if (updatedRecentSearches.length > 6) updatedRecentSearches.removeLast();
      emit(state.copyWith(recentSearches: updatedRecentSearches));
    }
  }

  void _onRemoveRecentSearch(
    RemoveRecentSearch event,
    Emitter<SearchState> emit,
  ) {
    final updatedRecentSearches = List<String>.from(
      state.recentSearches as Iterable,
    )..remove(event.search);
    emit(state.copyWith(recentSearches: updatedRecentSearches));
  }

  void _onToggleFilters(ToggleFilters event, Emitter<SearchState> emit) {
    emit(state.copyWith(showFilters: !(state.showFilters ?? false)));
  }

  void _onUpdateFilters(UpdateFilters event, Emitter<SearchState> emit) {
    emit(
      state.copyWith(
        sortBy: event.sortBy,
        minPrice: event.minPrice,
        maxPrice: event.maxPrice,
        selectedSizes: event.selectedSizes,
        selectedCategory: event.selectedCategory,
      ),
    );
  }
}
