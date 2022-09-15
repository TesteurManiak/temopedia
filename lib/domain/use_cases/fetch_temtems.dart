import 'package:fpdart/fpdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../repository/temtems_repository.dart';

class FetchTemtemsUseCase {
  FetchTemtemsUseCase(this._repository);

  final TemtemsRepository _repository;

  Future<Either<List<TemTemApiTem>, Object>> call() {
    return _repository.fetchTemtems();
  }
}
