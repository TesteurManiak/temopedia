import 'package:get_it/get_it.dart';

import 'data/datasources/local/local_datasource.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  final localDataSource = IsarLocalDataSource();
  await localDataSource.initialize();
  sl.registerLazySingleton<LocalDataSource>(() => localDataSource);
}
