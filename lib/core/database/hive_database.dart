import 'package:hive_flutter/adapters.dart';

import '../models/details.dart';
import '../models/evolution.dart';
import '../models/gender_ratio.dart';
import '../models/location.dart';
import '../models/stats.dart';
import '../models/technique.dart';
import '../models/temtem.dart';
import '../models/type.dart';
import 'local_storage.dart';

class HiveDatabase implements LocalStorage {
  static const temtemTable = 'temtem';

  bool _initialized = false;

  late final Box<Temtem> _temtemBox;

  Future<void> _init() async {
    if (_initialized) return;

    await Hive.initFlutter();

    // Register adapters
    Hive.registerAdapter(TemTypeAdapter());
    Hive.registerAdapter(StatsAdapter());
    Hive.registerAdapter(WeightAdapter());
    Hive.registerAdapter(HeightAdapter());
    Hive.registerAdapter(DetailsAdapter());
    Hive.registerAdapter(TechniqueAdapter());
    Hive.registerAdapter(EvolutionNodeAdapter());
    Hive.registerAdapter(EvolutionAdapter());
    Hive.registerAdapter(FreetemAdapter());
    Hive.registerAdapter(LocationAdapter());
    Hive.registerAdapter(GenderRatioAdapter());
    Hive.registerAdapter(TemtemAdapter());

    // Open boxes
    _temtemBox = await Hive.openBox(temtemTable);

    _initialized = true;
  }

  @override
  Future<void> createTemtem(Temtem temtem) async {
    if (!_initialized) {
      await _init();
    }

    await _temtemBox.put(temtem.number, temtem);
  }

  @override
  Future<void> createTemtems(List<Temtem> temtems) async {
    if (!_initialized) {
      await _init();
    }

    await _temtemBox.putAll({for (var e in temtems) e.number: e});
  }

  @override
  Future<void> deleteTemtem(Temtem temtem) async {
    if (!_initialized) {
      await _init();
    }

    await _temtemBox.delete(temtem.number);
  }

  @override
  Future<void> deleteTemtems(List<Temtem> temtems) async {
    if (!_initialized) {
      await _init();
    }

    await _temtemBox.deleteAll(temtems.map((e) => e.number));
  }

  @override
  Future<Temtem?> readTemtem(String number) async {
    if (!_initialized) {
      await _init();
    }

    return _temtemBox.get(number);
  }

  @override
  Future<List<Temtem>> readTemtems() async {
    if (!_initialized) {
      await _init();
    }

    return _temtemBox.values.toList();
  }

  @override
  Future<void> updateTemtem(Temtem temtem) => createTemtem(temtem);

  @override
  Future<void> updateTemtems(List<Temtem> temtems) => createTemtems(temtems);
}
