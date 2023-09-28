import 'package:flutter_core_module/flutter_core_module.dart';

abstract class AppException implements Exception {
  factory AppException([dynamic message]) => DomainException(message);
}

class DomainException implements AppException {
  final DomainErrorType message;

  DomainException(this.message);

  @override
  String toString() {
    return 'DomainException: ${message.uiError}';
  }
}

class HttpException implements AppException {
  final HttpErrorType message;

  HttpException(this.message);
}
