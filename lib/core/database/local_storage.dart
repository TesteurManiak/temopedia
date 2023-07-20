import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temopedia/core/database/hive_database.dart';
import 'package:temopedia/core/models/temtem.dart';
import 'package:temopedia/features/details/models/trait.dart';

part 'local_storage.g.dart';

abstract class LocalStorage {
  Future<void> createTemtems(Iterable<Temtem> temtems);
  Future<void> createTemtem(Temtem temtem);
  Future<List<Temtem>> readTemtems();
  Future<Temtem?> readTemtem(int id);
  Future<void> createTraits(Iterable<Trait> traits);
  Future<Trait?> readTrait(String name);
}

@Riverpod(keepAlive: true)
LocalStorage localStorage(LocalStorageRef ref) {
  return HiveDatabase();
}
