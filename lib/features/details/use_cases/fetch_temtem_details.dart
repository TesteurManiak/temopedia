import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/local_storage.dart';
import '../../../core/models/error.dart';
import '../../../core/models/result.dart';
import '../../../core/models/temtem.dart';
import '../../../core/network/http_clients.dart';

class FetchTemtemDetailsUseCase {
  FetchTemtemDetailsUseCase({
    required this.apiClient,
    required this.localStorage,
  });

  final ApiClient apiClient;
  final LocalStorage localStorage;

  Future<Result<Temtem, AppError>> call(int id) async {
    final result =
        await apiClient.get('/api/temtems/$id').decode(Temtem.fromJson);

    await result.whenOrNull<FutureOr<void>>(
      success: localStorage.createTemtem,
    );

    return result;
  }
}

final fetchTemtemDetailsUseCaseProvider =
    Provider.autoDispose<FetchTemtemDetailsUseCase>(
  (ref) {
    return FetchTemtemDetailsUseCase(
      apiClient: ref.watch(apiClientProvider),
      localStorage: ref.watch(localStorageProvider),
    );
  },
);
