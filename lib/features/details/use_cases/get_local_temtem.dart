import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/local_storage.dart';
import '../../../core/models/temtem.dart';

part 'get_local_temtem.g.dart';

@riverpod
Future<Temtem?> getLocalTemtem(GetLocalTemtemRef ref, int id) {
  return ref.watch(localStorageProvider).readTemtem(id);
}
