import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/local_storage.dart';
import '../../../core/models/temtem.dart';

class GetLocalTemtemUseCase {
  const GetLocalTemtemUseCase(this.localStorage);

  final LocalStorage localStorage;

  Future<Temtem?> call(int id) => localStorage.readTemtem(id);
}

final getLocalTemtemUseCaseProvider = Provider.autoDispose(
  (ref) => GetLocalTemtemUseCase(ref.watch(localStorageProvider)),
);
