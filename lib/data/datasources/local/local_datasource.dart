import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../../domain/entities/temtem.dart';

abstract class LocalDataSource {
  Future<void> initialize();
  Future<List<Temtem>> readAllTem();
}

class IsarLocalDataSource implements LocalDataSource {
  Isar? _isar;

  @override
  Future<List<Temtem>> readAllTem() async {
    return _isar!.temtems.where().findAll();
  }

  @override
  Future<void> initialize() async {
    final dir = await getApplicationSupportDirectory();
    _isar ??= await Isar.open(
      schemas: [TemtemSchema],
      directory: dir.path,
    );
  }
}
