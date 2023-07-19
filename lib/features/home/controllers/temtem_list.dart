import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temopedia/core/mixins/loadable.dart';
import 'package:temopedia/core/models/error.dart';
import 'package:temopedia/core/models/temtem.dart';
import 'package:temopedia/features/home/use_cases/fetch_temtem_list.dart';

part 'temtem_list.freezed.dart';
part 'temtem_list.g.dart';

@riverpod
class TemtemListController extends _$TemtemListController with Loadable {
  @override
  TemtemListState build() {
    return const TemtemListState.loading();
  }

  @override
  Future<void> load() async {
    state = const TemtemListState.loading();

    final result = await ref.read(fetchTemtemListUseCaseProvider.future);

    state = result.when(
      success: (s) => TemtemListState.loaded(temtems: s),
      failure: (f) => TemtemListState.error(error: f),
    );
  }
}

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
