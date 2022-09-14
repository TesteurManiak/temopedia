import 'package:equatable/equatable.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../domain/use_cases/fetch_temtems.dart';
part 'temtems_state.dart';

class TemtemsCubit extends Cubit<TemtemsState> {
  TemtemsCubit({
    required FetchTemtemsUseCase fetchTemtemsUseCase,
  })  : _fetchTemtemsUseCase = fetchTemtemsUseCase,
        super(const TemtemsLoading());

  final FetchTemtemsUseCase _fetchTemtemsUseCase;

  List<TemTemApiTem> _temtems = [];
  List<TemTemApiTem> get temtems => _temtems;

  Future<void> fetchTemtems() async {
    emit(const TemtemsLoading());
    final result = await _fetchTemtemsUseCase.call();
    result.fold(
      (success) {
        _temtems = success;
        emit(TemtemsLoaded(temtems: success));
      },
      (error) => emit(TemtemsError(message: error.toString())),
    );
  }
}
