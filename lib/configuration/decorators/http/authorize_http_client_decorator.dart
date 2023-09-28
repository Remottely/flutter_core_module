import 'dart:developer';

import 'package:flutter_core_module/flutter_core_module.dart';

class AuthorizeHttpClientDecorator implements IHttpClient {
  final IHttpClient decoratee;
  final IFetchSecureCacheStorage fetchSecureCacheStorage;
  final IDeleteSecureCacheStorage deleteSecureCacheStorage;

  AuthorizeHttpClientDecorator({
    required this.decoratee,
    required this.fetchSecureCacheStorage,
    required this.deleteSecureCacheStorage,
  });

  @override
  Future<Map<String, dynamic>?> request({
    required String url,
    required String method,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final token = await fetchSecureCacheStorage.fetch('token');
      final authorizedHeaders = headers ?? {}
        ..addAll({'authorization': 'Bearer $token'});
      return await decoratee.request(
          url: url, method: method, body: body, headers: authorizedHeaders);
    } catch (error) {
      log('[EXCEPTION_AuthorizeHttpClientDecorator]$error');
      if (error is HttpErrorType && error != HttpErrorType.forbidden) {
        rethrow;
      } else {
        await deleteSecureCacheStorage.delete('token');
        await deleteSecureCacheStorage.delete('refreshToken');
        throw HttpErrorType.forbidden;
      }
    }
  }
}
