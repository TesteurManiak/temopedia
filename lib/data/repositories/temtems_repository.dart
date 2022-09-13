import 'package:fpdart/fpdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../domain/repository/temtems_repository.dart';

class TemtemsRepositoryImpl implements TemtemsRepository {
  @override
  Future<Either<List<TemTemApiTem>, Exception>> fetchTemtems() {
    // TODO: implement fetchTemtems
    throw UnimplementedError();
  }
}
