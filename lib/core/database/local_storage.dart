import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/temtem.dart';
import 'hive_database.dart';

abstract class LocalStorage {
  Future<void> createTemtems(List<Temtem> temtems);
  Future<void> createTemtem(Temtem temtem);
  Future<List<Temtem>> readTemtems();
  Future<Temtem?> readTemtem(String number);
  Future<void> updateTemtems(List<Temtem> temtems);
  Future<void> updateTemtem(Temtem temtem);
  Future<void> deleteTemtems(List<Temtem> temtems);
  Future<void> deleteTemtem(Temtem temtem);
}

final localStorageProvider = Provider<LocalStorage>((ref) {
  return HiveDatabase();
});
