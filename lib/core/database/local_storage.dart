import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/temtem.dart';
import 'hive_database.dart';

abstract class LocalStorage {
  Future<void> createTemtems(Iterable<Temtem> temtems);
  Future<void> createTemtem(Temtem temtem);
  Future<List<Temtem>> readTemtems();
  Future<Temtem?> readTemtem(int id);
  Future<void> updateTemtems(Iterable<Temtem> temtems);
  Future<void> updateTemtem(Temtem temtem);
  Future<void> deleteTemtems(Iterable<int> ids);
  Future<void> deleteTemtem(int id);
}

final localStorageProvider = Provider<LocalStorage>((ref) {
  return HiveDatabase();
});
