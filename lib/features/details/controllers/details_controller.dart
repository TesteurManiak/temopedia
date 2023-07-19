import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temopedia/core/mixins/loadable.dart';
import 'package:temopedia/core/models/error.dart';
import 'package:temopedia/core/models/temtem.dart';
import 'package:temopedia/features/details/use_cases/fetch_temtem_details.dart';
import 'package:temopedia/features/details/use_cases/get_local_temtem.dart';

part 'details_controller.freezed.dart';
part 'details_controller.g.dart';

@riverpod
class DetailsController extends _$DetailsController with Loadable {
  DetailsController();

  @override
  DetailsState build(int temtemId) {
    return const DetailsState.loading();
  }

  @override
  Future<void> load() async {
    if (state.temtemOrNull == null) {
      final localTemtem =
          await ref.read(getLocalTemtemProvider(temtemId).future);
      if (localTemtem != null) {
        state = DetailsState.loading(temtem: localTemtem);
      }
    }

    final result = await ref.read(fetchTemtemDetailsProvider(temtemId).future);

    state = result.when(
      success: (temtem) => DetailsState.loaded(temtem: temtem),
      failure: (error) => DetailsState.error(error: error),
    );
  }
}

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.loading({Temtem? temtem}) = _Loading;
  const factory DetailsState.loaded({required Temtem temtem}) = _Loaded;
  const factory DetailsState.error({AppError? error}) = _Error;

  const DetailsState._();

  Temtem? get temtemOrNull {
    return whenOrNull(
      loading: (t) => t,
      loaded: (t) => t,
    );
  }
}
