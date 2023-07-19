import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:http/retry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temopedia/core/cache/network_query_cache_service.dart';
import 'package:temopedia/core/extensions/string.dart';
import 'package:temopedia/core/models/error.dart';
import 'package:temopedia/core/models/result.dart';
import 'package:temopedia/core/network/cache_client.dart';
import 'package:temopedia/core/network/rest_client.dart';

part 'http_clients.g.dart';

class AppRetryClient extends BaseClient {
  AppRetryClient({
    required Client client,
  }) : _retryClient = RetryClient(
          client,
        );

  final RetryClient _retryClient;

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    return _retryClient.send(request);
  }
}

class AppHttpClient extends BaseClient {
  AppHttpClient({
    this.connectTimeout = const Duration(seconds: 30),
    this.receiveTimeout = const Duration(seconds: 30),
    required NetworkQueryCacheService cacheService,
  }) : _client = CacheClient(
          httpClient: AppRetryClient(
            client: kIsWeb
                ? Client()
                : IOClient(HttpClient()..connectionTimeout = connectTimeout),
          ),
          cacheService: cacheService,
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

@riverpod
AppHttpClient appHttpClient(AppHttpClientRef ref) {
  return AppHttpClient(
    cacheService: ref.watch(networkQueryCacheServiceProvider),
  );
}

@riverpod
ApiClient apiClient(ApiClientRef ref) {
  return ApiClient(
    restClient: RestClient(
      baseUri: Uri.parse('https://temtem-api.mael.tech'),
      httpClient: ref.watch(appHttpClientProvider),
    ),
  );
}

@riverpod
String imageUrl(ImageUrlRef ref, String? path) {
  return ref
      .watch(apiClientProvider)
      .restClient
      .baseUri
      .replace(path: path?.rootPath)
      .toString();
}
