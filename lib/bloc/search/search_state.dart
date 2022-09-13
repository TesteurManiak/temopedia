part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  final SearchStateType type;
  final String? searchText;

  bool get isLoading => type == SearchStateType.loading;
  bool get hasError => type == SearchStateType.error;

  const SearchState({required this.type, this.searchText});

  @override
  List<Object?> get props => [type, searchText];
}

class SearchInitial extends SearchState {
  const SearchInitial() : super(type: SearchStateType.initial);
}

class SearchLoading extends SearchState {
  const SearchLoading() : super(type: SearchStateType.loading);
}

class SearchLoaded extends SearchState {
  const SearchLoaded() : super(type: SearchStateType.loaded);
}

class SearchError extends SearchState {
  const SearchError({required this.message})
      : super(type: SearchStateType.error);

  final String message;

  @override
  List<Object?> get props => [type, searchText, message];
}

enum SearchStateType {
  initial,
  loading,
  loaded,
  error,
}
