import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:http/retry.dart';

import '../models/error.dart';
import '../models/result.dart';
import 'rest_client.dart';

class AppRetryClient extends RetryClient {
  AppRetryClient({
    required Client client,
  }) : super(
          client,
          retries: 3,
        );
}

class AppHttpClient extends BaseClient {
  AppHttpClient({
    this.connectTimeout = const Duration(seconds: 30),
    this.receiveTimeout = const Duration(seconds: 30),
  }) : _client = AppRetryClient(
          client: kIsWeb
              ? Client()
              : IOClient(HttpClient()..connectionTimeout = connectTimeout),
        );

  final Duration connectTimeout;
  final Duration receiveTimeout;
  final Client _client;

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    return _client.send(request).timeout(receiveTimeout);
  }
}

class ApiClient {
  const ApiClient({
    required this.restClient,
  });

  final RestClient restClient;

  Future<Result<Object, AppError>> get(
    String path, {
    Map<String, Object?>? queryParameters,
    Map<String, String>? headers,
  }) async {
    return restClient.send(
      method: HttpMethod.get,
      path: path,
      queryParameters: queryParameters,
      headers: headers,
    );
  }
}

final httpClientProvider = Provider.autoDispose<AppHttpClient>((_) {
  return AppHttpClient();
});

final apiClientProvider = Provider.autoDispose<ApiClient>((ref) {
  return ApiClient(
    restClient: RestClient(
      baseUri: Uri.parse('https://temtem-api.mael.tech'),
      httpClient: ref.watch(httpClientProvider),
    ),
  );
});

final imageUrlProvider = Provider.family.autoDispose<String, String?>(
  (ref, path) {
    final startsWithSlash = path?.startsWith('/') ?? false;

    return ref
        .watch(apiClientProvider)
        .restClient
        .baseUri
        .replace(path: '${startsWithSlash ? '' : '/'}$path')
        .toString();
  },
);
