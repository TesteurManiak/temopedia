import 'package:get_it/get_it.dart';

import 'data/repositories/temtems_repository.dart';
import 'domain/repository/temtems_repository.dart';
import 'domain/use_cases/fetch_temtems.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  // Repositories
  sl.registerLazySingleton<TemtemsRepository>(() => TemtemsRepositoryImpl());

  // Use cases
  sl.registerLazySingleton(() => FetchTemtemsUseCase(sl()));
}
