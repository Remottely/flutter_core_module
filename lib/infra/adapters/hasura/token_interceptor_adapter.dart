import 'package:hasura_connect/hasura_connect.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class TokenInterceptorAdapter extends Interceptor {
  final IFirebaseAuthClient authClient;

  TokenInterceptorAdapter({required this.authClient});

  @override
  Future<void>? onConnected(HasuraConnect connect) async {}

  @override
  Future<void>? onDisconnected() async {}

  @override
  Future<void>? onError(HasuraError request, HasuraConnect connect) async =>
      request;

  @override
  Future<void>? onResponse(Response data, HasuraConnect connect) async => data;

  @override
  Future<void>? onSubscription(
      Request request, Snapshot<dynamic> snapshot) async {}

  @override
  Future<void>? onTryAgain(HasuraConnect connect) async {}

  @override
  Future<Request?>? onRequest(Request request, HasuraConnect connect) async {
    final User? user = authClient.currentUser;
    if (user != null) {
      final String? token = await user.getIdToken(true); // TODO: USE IT
      try {
        // request.headers['Authorization'] = 'Bearer $token';
        // request.headers['x-hasura-admin-secret'] = 'Bearer $token';
        request.headers['x-hasura-admin-secret'] =
            'IZdRHN6TsXX9qMlspw7QSNu1ySvmXeJnr8y6Jk7G53aqEiubrvRrgbEp6r7apIK2'; // TODO REMOVE THIS

        // request.headers['x-hasura-admin-secret'] = token; // TODO REMOVE THIS

        return request;
      } catch (e) {
        return null;
      }
    }
    // Modular.to.pushReplacementNamed('/sign-in'); // TODO REMOVE THIS
    return null;
  }
}
