import 'package:cloud_functions/cloud_functions.dart';

abstract class IFirebaseFunctionsClient {
  Future<HttpsCallableResult<dynamic>> callable(
      {required String callableFunction, required Map<String, dynamic> params});
}
