import 'package:fpdart/fpdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../core/network_info.dart';
import '../../domain/repository/temtems_repository.dart';
import '../datasources/remote/remote_datasource.dart';

class TemtemsRepositoryImpl implements TemtemsRepository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  TemtemsRepositoryImpl({
    required RemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remoteDataSource = remoteDataSource,
        _networkInfo = networkInfo;

  @override
  Future<Either<List<TemTemApiTem>, Object>> fetchTemtems() async {
    final isConnected = await _networkInfo.isConnected;
    if (isConnected) {
      return _remoteDataSource.getTemtems();
    }
    return Right(Exception('No internet connection'));
  }
}
