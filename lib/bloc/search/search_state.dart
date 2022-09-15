part of 'search_cubit.dart';

class SearchState extends Equatable {
  final String searchText;
  final Set<TemTemApiType> types;
  final bool filterByFavorite;
  final List<TemTemApiTem> filteredTemtems;

  const SearchState({
    this.searchText = '',
    this.types = const {},
    this.filterByFavorite = false,
    this.filteredTemtems = const [],
  });

  bool get hasSearchText => searchText.isNotEmpty;
  bool get hasTypes => types.isNotEmpty;
  bool get hasSearchFilters => hasSearchText || hasTypes || filterByFavorite;

  @override
  List<Object?> get props =>
      [searchText, types, filterByFavorite, filteredTemtems];

  SearchState copyWith({
    String? searchText,
    Set<TemTemApiType>? types,
    bool? filterByFavorite,
    List<TemTemApiTem>? filteredTemtems,
  }) {
    return SearchState(
      searchText: searchText ?? this.searchText,
      types: types ?? this.types,
      filterByFavorite: filterByFavorite ?? this.filterByFavorite,
      filteredTemtems: filteredTemtems ?? this.filteredTemtems,
    );
  }
}
