part of 'search_cubit.dart';

class SearchState extends Equatable {
  final String searchText;
  final Set<TemTemApiType> types;
  final bool filterByFavorite;
  final List<TemTemApiTem> fullList;
  final List<TemTemApiTem> filteredTemtems;

  const SearchState({
    this.searchText = '',
    this.types = const {},
    this.filterByFavorite = false,
    this.fullList = const [],
    this.filteredTemtems = const [],
  });

  bool get hasSearchText => searchText.isNotEmpty;
  bool get hasTypes => types.isNotEmpty;
  bool get hasSearchFilters => hasSearchText || hasTypes || filterByFavorite;

  @override
  List<Object?> get props =>
      [searchText, types, filterByFavorite, fullList, filteredTemtems];

  SearchState copyWith({
    String? searchText,
    Set<TemTemApiType>? types,
    bool? filterByFavorite,
    List<TemTemApiTem>? fullList,
    List<TemTemApiTem>? filteredTemtems,
  }) {
    return SearchState(
      searchText: searchText ?? this.searchText,
      types: types ?? this.types,
      filterByFavorite: filterByFavorite ?? this.filterByFavorite,
      fullList: fullList ?? this.fullList,
      filteredTemtems: filteredTemtems ?? this.filteredTemtems,
    );
  }
}
