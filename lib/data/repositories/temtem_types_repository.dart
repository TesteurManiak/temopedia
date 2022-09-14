import 'package:fpdart/fpdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../core/network_info.dart';
import '../../domain/repository/temtem_type_repository.dart';
import '../datasources/remote/remote_datasource.dart';

class TemtemTypesRepositoryImpl implements TemtemTypesRepository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  TemtemTypesRepositoryImpl({
    required RemoteDataSource remoteDataSource,
    required NetworkInfo networkInfo,
  })  : _remoteDataSource = remoteDataSource,
        _networkInfo = networkInfo;

  @override
  Future<Either<List<TemTemApiType>, Object>> getTemtemTypes() async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return _remoteDataSource.getTemTypes();
    }
    return Right(Exception('No internet connection'));
  }
}
