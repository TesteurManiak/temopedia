import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../temtems/temtems_cubit.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({
    required TemtemsCubit temtemsCubit,
  })  : _temtemsCubit = temtemsCubit,
        super(const SearchState()) {
    _temtemsCubit.stream.listen((temtemState) {
      if (temtemState is TemtemsLoaded) {
        emit(state.copyWith(filteredTemtems: temtemState.temtems));
        _filter(state);
      }
    });
  }

  final TemtemsCubit _temtemsCubit;

  void addTypeFilter(TemTemApiType type) {
    emit(state.copyWith(types: state.types..add(type)));
    _filter(state);
  }

  void removeTypeFilter(TemTemApiType type) {
    emit(state.copyWith(types: state.types..remove(type)));
    _filter(state);
  }

  void toggleFilterByFavorite() {
    emit(state.copyWith(filterByFavorite: !state.filterByFavorite));
    _filter(state);
  }

  void setSearchText(String searchText) {
    emit(state.copyWith(searchText: searchText));
    _filter(state);
  }

  void resetFilters() {
    emit(const SearchState());
    _filter(state);
  }

  void _filter(SearchState state) {
    final fullList = _temtemsCubit.temtems;
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
