import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<Type, Error> with _$Result {
  const factory Result.success(Type value) = _Success<Type, Error>;
  const factory Result.failure(Error error) = _Failure<Type, Error>;
}
