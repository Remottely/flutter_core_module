import 'package:hasura_connect/hasura_connect.dart';
import 'package:hive_cache_interceptor/hive_cache_interceptor.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

IHasuraClient hasuraAdapterFactory() => HasuraAdapter(
      hasuraClient: HasuraConnect(
        hasuraApiPathFactory(),
        interceptors: [
          TokenInterceptorAdapter(authClient: firebaseAuthClientFactory()),
          LogInterceptor(),
          HiveCacheInterceptor(),
        ],
      ),
    );
