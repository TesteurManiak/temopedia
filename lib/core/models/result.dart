import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<S, F> with _$Result<S, F> {
  const factory Result.success(S success) = Success<S, F>;
  const factory Result.failure(F failure) = Failure<S, F>;

  const Result._();

  Result<TResult, F> whenSuccess<TResult>(TResult Function(S) onSuccess) {
    return when(
      success: (s) => Result.success(onSuccess(s)),
      failure: Result.failure,
    );
  }

  S? successOrNull() {
    return when(
      success: (s) => s,
      failure: (f) => null,
    );
  }
}

extension ResultDecoder<F> on Result<Object?, F> {
  Result<S, F> decode<S>(S Function(Map<String, dynamic>) decoder) {
    return whenSuccess<S>((s) => decoder(s as Map<String, dynamic>));
  }

  Result<List<S>, F> decodeList<S>(S Function(Map<String, dynamic>) decoder) {
    return whenSuccess(
      (s) {
        final List json;
        if (s is String) {
          json = jsonDecode(s) as List;
        } else {
          json = s as List;
        }

        return json
            .cast<Map<String, dynamic>>()
            .map((json) => decoder(json))
            .toList();
      },
    );
  }
}

extension FutureResultDecoder<F> on Future<Result<Object?, F>> {
  Future<Result<S, F>> decode<S>(
    S Function(Map<String, dynamic>) decoder,
  ) async {
    return (await this).decode(decoder);
  }

  Future<Result<List<S>, F>> decodeList<S>(
    S Function(Map<String, dynamic>) decoder,
  ) async {
    return (await this).decodeList(decoder);
  }
}
