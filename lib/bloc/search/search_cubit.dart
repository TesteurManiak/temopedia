import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState());

  void addTypeFilter(TemTemApiType type) =>
      _filter(state.copyWith(types: state.types..add(type)));

  void removeTypeFilter(TemTemApiType type) =>
      _filter(state.copyWith(types: state.types..remove(type)));

  void toggleFilterByFavorite() =>
      _filter(state.copyWith(filterByFavorite: !state.filterByFavorite));

  void setSearchText(String searchText) =>
      _filter(state.copyWith(searchText: searchText));

  void resetFilters() => _filter(
        state.copyWith(
          searchText: '',
          types: null,
          filterByFavorite: false,
        ),
      );

  void updateFullFilterList(List<TemTemApiTem> temtems) =>
      _filter(state.copyWith(fullList: temtems));

  void _filter(SearchState state) {
    final fullList = state.fullList;
    emit(
      state.copyWith(
        filteredTemtems: fullList.where((e) {
          if (state.hasSearchText) {
            final validName =
                e.name.contains(RegExp(state.searchText, caseSensitive: false));
            if (!validName) return false;
          }
          if (state.hasTypes) {
            final validType = state.types.containsAll(e.types);
            if (!validType) return false;
          }
          return true;
        }).toList(),
      ),
    );
  }
}
