import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temopedia/core/mixins/loadable.dart';
import 'package:temopedia/core/models/error.dart';
import 'package:temopedia/features/details/models/trait.dart';
import 'package:temopedia/features/details/use_cases/fetch_temtem_trait.dart';
import 'package:temopedia/features/details/use_cases/get_local_trait.dart';

part 'trait_controller.freezed.dart';
part 'trait_controller.g.dart';

@riverpod
class TraitController extends _$TraitController with Loadable {
  @override
  TraitState build(String name) {
    return const TraitState.loading();
  }

  @override
  Future<void> load() async {
    state = const TraitState.loading();
    if (state.traitOrNull == null) {
      final localTrait = await ref.read(getLocalTraitProvider(name).future);
      if (localTrait != null) {
        state = TraitState.loading(trait: localTrait);
      }
    }

    final result = await ref.read(fetchTemtemTraitProvider(name).future);

    state = result.when(
      success: (trait) => TraitState.loaded(trait: trait),
      failure: (error) => TraitState.error(error: error),
    );
  }
}

@freezed
class TraitState with _$TraitState {
  const factory TraitState.loading({Trait? trait}) = _Loading;
  const factory TraitState.loaded({required Trait trait}) = _Loaded;
  const factory TraitState.error({AppError? error}) = _Error;

  const TraitState._();

  Trait? get traitOrNull {
    return whenOrNull(
      loading: (trait) => trait,
      loaded: (trait) => trait,
    );
  }
}
