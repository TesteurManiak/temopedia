import 'package:fpdart/fpdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../domain/repository/temtems_repository.dart';
import '../datasources/remote/remote_datasource.dart';

class TemtemsRepositoryImpl implements TemtemsRepository {
  final RemoteDataSource _remoteDataSource;

  TemtemsRepositoryImpl({required RemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<List<TemTemApiTem>, Object>> fetchTemtems() {
    return _remoteDataSource.getTemtems();
  }
}
