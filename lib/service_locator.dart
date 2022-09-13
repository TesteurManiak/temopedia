import 'package:get_it/get_it.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import 'data/datasources/remote/remote_datasource.dart';
import 'data/repositories/temtems_repository.dart';
import 'domain/repository/temtems_repository.dart';
import 'domain/use_cases/fetch_temtems.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  // Datasources
  sl.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(TemTemApi()),
  );

  // Repositories
  sl.registerLazySingleton<TemtemsRepository>(
    () => TemtemsRepositoryImpl(remoteDataSource: sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => FetchTemtemsUseCase(sl()));
}
