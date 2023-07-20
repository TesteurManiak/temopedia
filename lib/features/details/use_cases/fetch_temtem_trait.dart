import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temopedia/core/models/error.dart';
import 'package:temopedia/core/models/result.dart';
import 'package:temopedia/features/details/models/trait.dart';
import 'package:temopedia/features/details/use_cases/fetch_temtem_traits.dart';

part 'fetch_temtem_trait.g.dart';

@riverpod
Future<Result<Trait, AppError>> fetchTemtemTrait(
  FetchTemtemTraitRef ref,
  String name,
) async {
  final result = await ref.watch(fetchTemtemTraitsProvider.future);

  return result.when(
    success: (traits) {
      final trait = traits.firstWhereOrNull((trait) => trait.name == name);
      if (trait == null) {
        return Result.failure(
          AppError(type: AppErrorType.other, error: 'Trait $name not found'),
        );
      }
      return Result.success(trait);
    },
    failure: Result.failure,
  );
}
