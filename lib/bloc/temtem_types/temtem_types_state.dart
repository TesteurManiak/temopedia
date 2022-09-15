part of 'temtem_types_cubit.dart';

abstract class TemtemTypesState extends Equatable {
  const TemtemTypesState({required this.type});

  final TemtemTypesStateType type;

  bool get hasError => type == TemtemTypesStateType.error;
  bool get isLoading => type == TemtemTypesStateType.loading;
  bool get isLoaded => type == TemtemTypesStateType.loaded;

  @override
  List<Object?> get props => [type];
}

class TemtemTypesLoading extends TemtemTypesState {
  const TemtemTypesLoading() : super(type: TemtemTypesStateType.loading);
}

class TemtemTypesLoaded extends TemtemTypesState {
  const TemtemTypesLoaded({required this.temtemTypes})
      : super(type: TemtemTypesStateType.loaded);

  final List<TemTemApiType> temtemTypes;

  @override
  List<Object?> get props => [type, temtemTypes];
}

class TemtemTypesError extends TemtemTypesState {
  const TemtemTypesError({this.message})
      : super(type: TemtemTypesStateType.error);
  final String? message;

  @override
  List<Object?> get props => [type, message];
}

enum TemtemTypesStateType {
  loading,
  loaded,
  error,
}
