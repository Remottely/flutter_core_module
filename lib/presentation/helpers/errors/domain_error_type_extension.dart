import 'package:flutter_core_module/flutter_core_module.dart';

extension UIErrorDomainErrorExtension on DomainErrorType {
  UIErrorType get uiError {
    switch (this) {
      case DomainErrorType.emailInUse:
        return UIErrorType.emailInUse;
      case DomainErrorType.invalidCredentials:
        return UIErrorType.invalidCredentials;
      case DomainErrorType.unexpected:
        return UIErrorType.unexpected;
      case DomainErrorType.userNotFound:
        return UIErrorType.userNotFound;
      case DomainErrorType.userNotLoggedIn:
        return UIErrorType.userNotLoggedIn;
      case DomainErrorType.accessDenied:
        return UIErrorType.unexpected;
      default:
        return UIErrorType.unexpected;
    }
  }
}
