import 'package:hive_flutter/adapters.dart';
import 'package:temopedia/core/database/local_storage.dart';
import 'package:temopedia/core/models/details.dart';
import 'package:temopedia/core/models/evolution.dart';
import 'package:temopedia/core/models/gender_ratio.dart';
import 'package:temopedia/core/models/location.dart';
import 'package:temopedia/core/models/stats.dart';
import 'package:temopedia/core/models/technique.dart';
import 'package:temopedia/core/models/temtem.dart';
import 'package:temopedia/core/models/type.dart';

class HiveDatabase implements LocalStorage {
  static const temtemTable = 'temtem';

  bool _initialized = false;

  late final Box<Temtem> _temtemBox;

  Future<void> _init() async {
    if (_initialized) return;

    await Hive.initFlutter();

    // Register adapters
    Hive
      ..registerAdapter(TemTypeAdapter())
      ..registerAdapter(StatsAdapter())
      ..registerAdapter(WeightAdapter())
      ..registerAdapter(HeightAdapter())
      ..registerAdapter(DetailsAdapter())
      ..registerAdapter(TechniqueAdapter())
      ..registerAdapter(EvolutionNodeAdapter())
      ..registerAdapter(EvolutionAdapter())
      ..registerAdapter(FreetemAdapter())
      ..registerAdapter(LocationAdapter())
      ..registerAdapter(GenderRatioAdapter())
      ..registerAdapter(TemtemAdapter());

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
  Future<void> createTemtems(Iterable<Temtem> temtems) async {
    if (!_initialized) {
      await _init();
    }

    await _temtemBox.putAll({for (final e in temtems) e.number: e});
  }

  @override
  Future<void> deleteTemtem(int id) async {
    if (!_initialized) {
      await _init();
    }

    await _temtemBox.delete(id);
  }

  @override
  Future<void> deleteTemtems(Iterable<int> ids) async {
    if (!_initialized) {
      await _init();
    }

    await _temtemBox.deleteAll(ids);
  }

  @override
  Future<Temtem?> readTemtem(int id) async {
    if (!_initialized) {
      await _init();
    }

    return _temtemBox.get(id);
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
  Future<void> updateTemtems(Iterable<Temtem> temtems) {
    return createTemtems(temtems);
  }
}
