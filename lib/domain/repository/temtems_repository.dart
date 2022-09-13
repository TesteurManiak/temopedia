import 'package:fpdart/fpdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

abstract class TemtemsRepository {
  Future<Either<List<TemTemApiTem>, Exception>> fetchTemtems();
}
