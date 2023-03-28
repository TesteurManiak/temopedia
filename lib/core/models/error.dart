import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
class AppError with _$AppError {
  const factory AppError({
    String? type,
    String? error,
  }) = _AppError;

  factory AppError.fromJson(Map<String, dynamic> json) =>
      _$AppErrorFromJson(json);
}

class AppErrorType {
  const AppErrorType._();

  static const unknown = 'unknown';
  static const unauthorized = 'unauthorized';
  static const timeout = 'timeout';
  static const network = 'network';
  static const other = 'other';
}
