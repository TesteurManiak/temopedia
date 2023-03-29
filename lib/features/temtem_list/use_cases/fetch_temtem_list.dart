import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/error.dart';
import '../../../core/models/result.dart';
import '../../../core/models/temtem.dart';
import '../../../core/network/http_clients.dart';

class FetchTemtemListUseCase {
  FetchTemtemListUseCase(this.apiClient);

  final ApiClient apiClient;

  Future<Result<List<Temtem>, AppError>> call() async {
    return apiClient.get('/api/temtems').decodeList(Temtem.fromJson);
  }
}

final fetchTemtemListUseCaseProvider = Provider(
  (ref) => FetchTemtemListUseCase(ref.watch(apiClientProvider)),
);
