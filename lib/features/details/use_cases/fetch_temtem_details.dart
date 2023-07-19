import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temopedia/core/database/local_storage.dart';
import 'package:temopedia/core/models/error.dart';
import 'package:temopedia/core/models/result.dart';
import 'package:temopedia/core/models/temtem.dart';
import 'package:temopedia/core/network/http_clients.dart';

part 'fetch_temtem_details.g.dart';

@riverpod
Future<Result<Temtem, AppError>> fetchTemtemDetails(
  FetchTemtemDetailsRef ref,
  int id,
) async {
  final apiClient = ref.watch(apiClientProvider);
  final localStorage = ref.watch(localStorageProvider);

  final result =
      await apiClient.get('/api/temtems/$id').decode(Temtem.fromJson);

  await result.whenOrNull<FutureOr<void>>(
    success: localStorage.createTemtem,
  );

  return result;
}
