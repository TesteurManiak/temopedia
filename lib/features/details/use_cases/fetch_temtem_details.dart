import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/local_storage.dart';
import '../../../core/models/error.dart';
import '../../../core/models/result.dart';
import '../../../core/models/temtem.dart';
import '../../../core/network/http_clients.dart';

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
