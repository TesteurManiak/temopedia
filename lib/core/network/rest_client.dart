import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../models/error.dart';
import '../models/result.dart';

enum HttpMethod {
  get('GET'),
  post('POST'),
  delete('DELETE'),
  put('PUT'),
  patch('PATCH');

  const HttpMethod(this.method);

  final String method;
}

class RestClient {
  const RestClient({
    required this.baseUri,
    required this.httpClient,
  });

  final Uri baseUri;
  final Client httpClient;

  Future<Result<Object, AppError>> send({
    required HttpMethod method,
    required String path,
    Map<String, Object?>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final uri = baseUri.replace(
      path: '${path.startsWith('/') ? '' : '/'}$path',
      queryParameters: queryParameters?.normalize(),
    );

    final request = Request(method.method, uri);
    if (headers != null) {
      request.headers.addAll(headers);
    }

    return _sendRequest(request: request);
  }

  Future<Result<Object, AppError>> _sendRequest({
    required BaseRequest request,
  }) async {
    try {
      final response = await httpClient.send(request);

      if (!response.isSuccessful) {
        if (response.statusCode == HttpStatus.unauthorized) {
          return const Result.failure(
            AppError(type: AppErrorType.unauthorized),
          );
        }

        final body = await response.stream.bytesToString();

        try {
          final json = jsonDecode(body) as Map<String, dynamic>;
          return Result.failure(AppError.fromJson(json));
        } catch (e) {
          final error =
              '[RestClient] could not parse the following response: $body';

          return Result.failure(
            AppError(error: error, type: AppErrorType.unknown),
          );
        }
      }

      final body = await response.stream.bytesToString();
      if (body.isEmpty) {
        return const Result.success('');
      }

      final contentTypeHeader = response.headers[HttpHeaders.contentTypeHeader];
      if (contentTypeHeader != null) {
        final mimeType = ContentType.parse(contentTypeHeader).mimeType;
        if (mimeType == ContentType.json.mimeType) {
          final json = jsonDecode(body) as Object;
          return Result.success(json);
        }
      }

      return Result.success(body);
    } on TimeoutException {
      return const Result.failure(
        AppError(type: AppErrorType.timeout),
      );
    } on SocketException catch (e) {
      if (e.message.contains('timed out')) {
        return const Result.failure(
          AppError(type: AppErrorType.timeout),
        );
      } else if (e.message.contains('Failed host lookup')) {
        return const Result.failure(
          AppError(type: AppErrorType.network),
        );
      }

      return Result.failure(
        AppError(type: AppErrorType.other, error: e.toString()),
      );
    } catch (e) {
      return Result.failure(
        AppError(
          type: AppErrorType.other,
          error: e.toString(),
        ),
      );
    }
  }
}

extension on Map<String, Object?> {
  Map<String, Object>? normalize() {
    if (isEmpty) return null;

    final queryParams = <String, Object>{};

    for (final entry in entries) {
      final value = entry.value;
      if (value != null) {
        queryParams[entry.key] = value.toQueryParameter();
      }
    }

    if (queryParams.isEmpty) return null;

    return queryParams;
  }
}

extension on Object {
  Object toQueryParameter({bool root = true}) {
    final obj = this;
    if (obj is String || (obj is Iterable<String> && root)) {
      return obj;
    }

    if (obj is Iterable<Object> && root) {
      return obj.map((e) => e.toQueryParameter(root: false)).toList();
    }

    if (obj is DateTime) {
      return obj.toUtc().toIso8601String();
    }

    return toString();
  }
}

extension on StreamedResponse {
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}
