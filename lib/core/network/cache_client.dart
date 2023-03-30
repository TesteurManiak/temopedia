import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../cache/network_query_cache_service.dart';

class CacheClient extends BaseClient {
  CacheClient({
    required this.httpClient,
    required this.cacheService,
  });

  final Client httpClient;
  final NetworkQueryCacheService cacheService;

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final String cacheKey = '$request';

    final cachedResponse = await _getResponseFromCache(cacheKey, request);

    if (cachedResponse != null) return cachedResponse;

    final response = await httpClient.send(request);

    if (response.statusCode == HttpStatus.ok) {
      return _cacheResponse(cacheKey, response);
    }

    return response;
  }

  Future<StreamedResponse?> _getResponseFromCache(
    String cacheKey,
    BaseRequest request,
  ) async {
    final cachedResponse = await cacheService.get(cacheKey);

    if (cachedResponse != null && cachedResponse.isValid) {
      final cachedJson = cachedResponse.value;

      return CachedStreamResponse(
        cachedJson,
        request: request,
      );
    }

    return null;
  }

  Future<StreamedResponse> _cacheResponse(
    String cacheKey,
    StreamedResponse response,
  ) async {
    final responseBytes = await response.stream.toBytes();

    await cacheService.put(
      cacheKey: cacheKey,
      networkResponseJson: utf8.decode(responseBytes),
    );

    return StreamedResponse(
      Stream.value(responseBytes),
      response.statusCode,
      request: response.request,
      contentLength: response.contentLength,
      headers: response.headers,
      isRedirect: response.isRedirect,
      persistentConnection: response.persistentConnection,
      reasonPhrase: response.reasonPhrase,
    );
  }
}

class CachedStreamResponse extends StreamedResponse {
  CachedStreamResponse(
    String cachedJson, {
    BaseRequest? request,
  }) : super(
          Stream.value(utf8.encode(cachedJson)),
          HttpStatus.ok,
          request: request,
        );
}
