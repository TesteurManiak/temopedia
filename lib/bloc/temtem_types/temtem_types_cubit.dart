import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../domain/use_cases/fetch_tem_types.dart';

part 'temtem_types_state.dart';

class TemtemTypesCubit extends Cubit<TemtemTypesState> {
  TemtemTypesCubit({
    required FetchTemTypesUseCase fetchTemTypesUseCase,
  })  : _fetchTemTypesUseCase = fetchTemTypesUseCase,
        super(const TemtemTypesLoading()) {
    fetchTemtemTypes();
  }

  final FetchTemTypesUseCase _fetchTemTypesUseCase;

  List<TemTemApiType> _temtemTypes = [];
  List<TemTemApiType> get temtemTypes => _temtemTypes;

  Future<void> fetchTemtemTypes() async {
    emit(const TemtemTypesLoading());
    final result = await _fetchTemTypesUseCase.call();
    result.fold(
      (success) {
        _temtemTypes = success;
        emit(TemtemTypesLoaded(temtemTypes: success));
      },
      (error) => emit(TemtemTypesError(message: error.toString())),
    );
  }
}
