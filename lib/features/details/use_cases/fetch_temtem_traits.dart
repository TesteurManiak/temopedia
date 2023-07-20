import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temopedia/core/database/local_storage.dart';
import 'package:temopedia/core/models/error.dart';
import 'package:temopedia/core/models/result.dart';
import 'package:temopedia/core/network/http_clients.dart';
import 'package:temopedia/features/details/models/trait.dart';

part 'fetch_temtem_traits.g.dart';

@riverpod
Future<Result<List<Trait>, AppError>> fetchTemtemTraits(
  FetchTemtemTraitsRef ref,
) async {
  final apiClient = ref.watch(apiClientProvider);
  final localStorage = ref.watch(localStorageProvider);

  final result = await apiClient.get('/api/traits').decodeList(Trait.fromJson);

  await result.whenOrNull(success: localStorage.createTraits);

  return result;
}
