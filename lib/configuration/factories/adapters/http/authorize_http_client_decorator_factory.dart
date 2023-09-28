import 'package:flutter_core_module/flutter_core_module.dart';

IHttpClient authorizeHttpClientDecoratorFactory() =>
    AuthorizeHttpClientDecorator(
      decoratee: httpAdapterFactory(),
      fetchSecureCacheStorage: localSecureStorageAdapterFactory(),
      deleteSecureCacheStorage: localSecureStorageAdapterFactory(),
    );
