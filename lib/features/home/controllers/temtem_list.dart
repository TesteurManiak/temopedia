import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/mixins/loadable.dart';
import '../../../core/models/error.dart';
import '../../../core/models/temtem.dart';
import '../use_cases/fetch_temtem_list.dart';

part 'temtem_list.freezed.dart';

class TemtemListController extends StateNotifier<TemtemListState>
    with Loadable {
  TemtemListController({
    required FetchTemtemListUseCase fetchTemtemListUseCase,
  })  : _fetchTemtemListUseCase = fetchTemtemListUseCase,
        super(const TemtemListState.loading());

  final FetchTemtemListUseCase _fetchTemtemListUseCase;

  @override
  Future<void> load() async {
    state = const TemtemListState.loading();

    final result = await _fetchTemtemListUseCase();

    state = result.when(
      success: (s) => TemtemListState.loaded(temtems: s),
      failure: (f) => TemtemListState.error(error: f),
    );
  }
}

final temtemListControllerProvider =
    StateNotifierProvider.autoDispose<TemtemListController, TemtemListState>(
  (ref) {
    return TemtemListController(
      fetchTemtemListUseCase: ref.watch(fetchTemtemListUseCaseProvider),
    );
  },
);

@freezed
class TemtemListState with _$TemtemListState {
  const factory TemtemListState.loading() = _TemtemListStateLoading;
  const factory TemtemListState.loaded({
    required List<Temtem> temtems,
  }) = _TemtemListStateLoaded;
  const factory TemtemListState.error({
    AppError? error,
  }) = _TemtemListStateError;
}
