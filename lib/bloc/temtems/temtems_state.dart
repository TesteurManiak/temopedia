part of 'temtems_cubit.dart';

abstract class TemtemsState extends Equatable {
  const TemtemsState({required this.type});

  final TemtemsStateType type;

  bool get hasError => type == TemtemsStateType.error;
  bool get isLoading => type == TemtemsStateType.loading;
  bool get isLoaded => type == TemtemsStateType.loaded;

  @override
  List<Object?> get props => [type];
}

class TemtemsLoading extends TemtemsState {
  const TemtemsLoading() : super(type: TemtemsStateType.loading);
}

class TemtemsLoaded extends TemtemsState {
  const TemtemsLoaded({required this.temtems})
      : super(type: TemtemsStateType.loaded);

  final List<TemTemApiTem> temtems;

  @override
  List<Object?> get props => [type, temtems];
}

class TemtemsError extends TemtemsState {
  const TemtemsError({this.message}) : super(type: TemtemsStateType.error);

  final String? message;

  @override
  List<Object?> get props => [type, message];
}

enum TemtemsStateType {
  loading,
  loaded,
  error,
}
