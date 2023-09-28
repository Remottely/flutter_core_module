import 'dart:convert';

import 'package:http/http.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class HttpAdapter implements IHttpClient {
  final Client client;

  HttpAdapter(this.client);

  @override
  Future<Map<String, dynamic>?> request(
      {required String url,
      required String method,
      Map<String, dynamic>? body,
      Map<String, dynamic>? headers}) async {
    final defaultHeaders = headers?.cast<String, String>() ?? {}
      ..addAll(
          {'content-type': 'application/json', 'accept': 'application/json'});
    final jsonBody = body != null ? jsonEncode(body) : null;
    var response = Response('', 500);
    Future<Response>? futureResponse;
    try {
      if (method == 'post') {
        futureResponse = client.post(Uri.parse(url),
            headers: defaultHeaders, body: jsonBody);
      } else if (method == 'get') {
        futureResponse = client.get(Uri.parse(url), headers: defaultHeaders);
      } else if (method == 'put') {
        futureResponse =
            client.put(Uri.parse(url), headers: defaultHeaders, body: jsonBody);
      }
      if (futureResponse != null) {
        response = await futureResponse.timeout(const Duration(seconds: 10));
      }
    } catch (_) {
      throw HttpException(HttpErrorType.serverError);
    }
    return _handleResponse(response);
  }

  Map<String, dynamic>? _handleResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return response.body.isEmpty ? null : jsonDecode(response.body);
      case 201:
        return response.body.isEmpty ? null : jsonDecode(response.body);
      case 204:
        return null;
      case 400:
        throw HttpException(HttpErrorType.badRequest);
      case 401:
        throw HttpException(HttpErrorType.unauthorized);
      case 403:
        throw HttpException(HttpErrorType.forbidden);
      case 404:
        throw HttpException(HttpErrorType.notFound);
      default:
        throw HttpException(HttpErrorType.serverError);
    }
  }
}
