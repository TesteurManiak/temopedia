import 'package:fpdart/fpdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../repository/temtem_type_repository.dart';

class FetchTemTypesUseCase {
  FetchTemTypesUseCase(this._repository);

  final TemtemTypesRepository _repository;

  Future<Either<List<TemTemApiType>, Object>> call() {
    return _repository.getTemtemTypes();
  }
}
