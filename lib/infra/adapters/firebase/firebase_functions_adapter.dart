import 'dart:developer';

import 'package:flutter_core_module/flutter_core_module.dart';

class FirebaseFunctionsAdapter implements IFirebaseFunctionsClient {
  final FirebaseFunctions firebaseFunctions;

  FirebaseFunctionsAdapter({required this.firebaseFunctions});

  @override
  Future<HttpsCallableResult<dynamic>> callable(
      {required String callableFunction,
      required Map<String, dynamic> params}) async {
    try {
      final HttpsCallable callable =
          firebaseFunctions.httpsCallable(callableFunction);

      final HttpsCallableResult<dynamic> resp = await callable.call(params);

      log('[RESULT]: ${resp.data['status']}${resp.data['message']}');
      return resp;
    } catch (error) {
      log('[ERROR]: $error');
      throw DomainErrorType.unexpected;
    }
  }
}
