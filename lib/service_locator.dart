import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import 'core/network_info.dart';
import 'data/datasources/remote/remote_datasource.dart';
import 'data/repositories/temtem_types_repository.dart';
import 'data/repositories/temtems_repository.dart';
import 'domain/repository/temtem_type_repository.dart';
import 'domain/repository/temtems_repository.dart';
import 'domain/use_cases/fetch_tem_types.dart';
import 'domain/use_cases/fetch_temtems.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  // Datasources
  sl.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(TemTemApi()),
  );

  // Repositories
  sl.registerLazySingleton<TemtemsRepository>(
    () => TemtemsRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<TemtemTypesRepository>(
    () => TemtemTypesRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => FetchTemtemsUseCase(sl()));
  sl.registerLazySingleton(() => FetchTemTypesUseCase(sl()));

  // External
  sl.registerLazySingleton<NetworkInfo>(
    () => ConnectivityInfo(connectivity: Connectivity()),
  );
}
