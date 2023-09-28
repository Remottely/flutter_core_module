import 'package:flutter_core_module/flutter_core_module.dart';

extension DomainErrorFirebaseAuthExceptionExtension on FirebaseAuthException {
  DomainErrorType get domainError {
    switch (code) {
      case 'ERROR_INVALID_EMAIL':
      case 'ERROR_WRONG_PASSWORD':
        return DomainErrorType.invalidCredentials;
      case 'ERROR_USER_NOT_FOUND':
      case 'ERROR_USER_DISABLED':
      case 'ERROR_TOO_MANY_REQUESTS':
      case 'ERROR_OPERATION_NOT_ALLOWED':
        return DomainErrorType.unexpected;
      default:
        return DomainErrorType.unexpected;
    }
  }
}
