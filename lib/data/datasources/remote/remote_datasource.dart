import 'package:fpdart/fpdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

abstract class RemoteDataSource {
  Future<Either<List<TemTemApiTem>, Object>> getTemtems();
  Future<Either<List<TemTemApiType>, Object>> getTemTypes();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  RemoteDataSourceImpl(this._temTemApi);

  final TemTemApi _temTemApi;

  @override
  Future<Either<List<TemTemApiTem>, Object>> getTemtems() async {
    try {
      final temtems = await _temTemApi.getTemTems();
      return Left(temtems);
    } catch (e) {
      return Right(e);
    }
  }

  @override
  Future<Either<List<TemTemApiType>, Object>> getTemTypes() async {
    try {
      final types = await _temTemApi.getTypes();
      return Left(types);
    } catch (e) {
      return Right(e);
    }
  }
}
