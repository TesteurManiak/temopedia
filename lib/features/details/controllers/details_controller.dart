import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/mixins/loadable.dart';
import '../../../core/models/error.dart';
import '../../../core/models/temtem.dart';
import '../use_cases/fetch_temtem_details.dart';
import '../use_cases/get_local_temtem.dart';

part 'details_controller.freezed.dart';

class DetailsController extends StateNotifier<DetailsState> with Loadable {
  DetailsController({
    required this.temtemId,
    required GetLocalTemtemUseCase getLocalTemtemUseCase,
    required FetchTemtemDetailsUseCase fetchTemtemDetailsUseCase,
  })  : _getLocalTemtemUseCase = getLocalTemtemUseCase,
        _fetchTemtemDetailsUseCase = fetchTemtemDetailsUseCase,
        super(const DetailsState.loading());

  final int temtemId;
  final GetLocalTemtemUseCase _getLocalTemtemUseCase;
  final FetchTemtemDetailsUseCase _fetchTemtemDetailsUseCase;

  @override
  Future<void> load() async {
    if (state.temtemOrNull == null) {
      final localTemtem = await _getLocalTemtemUseCase(temtemId);
      if (localTemtem != null) {
        state = DetailsState.loading(temtem: localTemtem);
      }
    }

    final result = await _fetchTemtemDetailsUseCase(temtemId);

    state = result.when(
      success: (temtem) => DetailsState.loaded(temtem: temtem),
      failure: (error) => DetailsState.error(error: error),
    );
  }
}

final detailsControllerProvider = StateNotifierProvider.autoDispose
    .family<DetailsController, DetailsState, int>(
  (ref, id) {
    return DetailsController(
      temtemId: id,
      getLocalTemtemUseCase: ref.watch(getLocalTemtemUseCaseProvider),
      fetchTemtemDetailsUseCase: ref.watch(fetchTemtemDetailsUseCaseProvider),
    );
  },
);

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.loading({Temtem? temtem}) = _Loading;
  const factory DetailsState.loaded({
    required Temtem temtem,
  }) = _Loaded;
  const factory DetailsState.error({AppError? error}) = _Error;

  const DetailsState._();

  Temtem? get temtemOrNull {
    return whenOrNull(
      loading: (t) => t,
      loaded: (t) => t,
    );
  }
}
