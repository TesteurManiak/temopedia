import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState());

  void addTypeFilter(TemTemApiType type) {
    emit(state.copyWith(types: state.types..add(type)));
    _filter();
  }

  void removeTypeFilter(TemTemApiType type) {
    emit(state.copyWith(types: state.types..remove(type)));
    _filter();
  }

  void toggleFilterByFavorite() {
    emit(state.copyWith(filterByFavorite: !state.filterByFavorite));
    _filter();
  }

  void setSearchText(String searchText) {
    emit(state.copyWith(searchText: searchText));
    _filter();
  }

  void resetFilters() {
    emit(const SearchState());
    _filter();
  }

  void updateFullFilterList(List<TemTemApiTem> temtems) {
    emit(state.copyWith(fullList: temtems));
    _filter();
  }

  void _filter() {
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
