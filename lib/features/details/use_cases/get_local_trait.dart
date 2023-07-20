import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temopedia/core/database/local_storage.dart';
import 'package:temopedia/features/details/models/trait.dart';

part 'get_local_trait.g.dart';

@riverpod
Future<Trait?> getLocalTrait(GetLocalTraitRef ref, String name) async {
  return ref.watch(localStorageProvider).readTrait(name);
}
