import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:temopedia/core/database/local_storage.dart';
import 'package:temopedia/core/models/error.dart';
import 'package:temopedia/core/models/result.dart';
import 'package:temopedia/core/models/temtem.dart';
import 'package:temopedia/core/network/http_clients.dart';

part 'fetch_temtem_list.g.dart';

@riverpod
Future<Result<List<Temtem>, AppError>> fetchTemtemListUseCase(
  FetchTemtemListUseCaseRef ref,
) async {
  final apiClient = ref.watch(apiClientProvider);
  final localStorage = ref.watch(localStorageProvider);
  final result =
      await apiClient.get('/api/temtems').decodeList(Temtem.fromJson);

  await result.whenOrNull<FutureOr<void>>(
    success: localStorage.createTemtems,
  );

  return result;
}
