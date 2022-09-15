import 'package:fpdart/fpdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

abstract class TemtemTypesRepository {
  Future<Either<List<TemTemApiType>, Object>> getTemtemTypes();
}
