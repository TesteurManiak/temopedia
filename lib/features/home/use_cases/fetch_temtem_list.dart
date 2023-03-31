import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/local_storage.dart';
import '../../../core/models/error.dart';
import '../../../core/models/result.dart';
import '../../../core/models/temtem.dart';
import '../../../core/network/http_clients.dart';

class FetchTemtemListUseCase {
  FetchTemtemListUseCase({
    required this.apiClient,
    required this.localStorage,
  });

  final ApiClient apiClient;
  final LocalStorage localStorage;

  Future<Result<List<Temtem>, AppError>> call() async {
    final result =
        await apiClient.get('/api/temtems').decodeList(Temtem.fromJson);

    await result.whenOrNull<FutureOr<void>>(
      success: localStorage.createTemtems,
    );

    return result;
  }
}

final fetchTemtemListUseCaseProvider =
    Provider.autoDispose<FetchTemtemListUseCase>(
  (ref) {
    return FetchTemtemListUseCase(
      apiClient: ref.watch(apiClientProvider),
      localStorage: ref.watch(localStorageProvider),
    );
  },
);
