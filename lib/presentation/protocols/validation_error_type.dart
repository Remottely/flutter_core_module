import 'package:flutter_core_module/flutter_core_module.dart';

enum ValidationErrorType {
  invalidEmailFormat,
  passwordsMustBeTheSame,
  isNotEqualsField,
  requiredField,
  invalidField,
  errorEnterYourFullName,
  errorEnterCharactersFromaTozOrAToZ,
  errorTheNameMustBeComplete,
  errorEnterAValidPhoneNumber,
  errorThisFieldMustInitializeWithAtSign,
  errorThisFieldMustNotContainWhiteSpace,
  minimumSixCharacters,
  errorPleaseLeaveYourComplaint,
}

extension ValidationErrorTypeExtension on ValidationErrorType {
  UIErrorType get uiError {
    switch (this) {
      case ValidationErrorType.invalidField:
        return UIErrorType.invalidField;
      case ValidationErrorType.requiredField:
        return UIErrorType.requiredField;
      case ValidationErrorType.isNotEqualsField:
        return UIErrorType.isNotEqualsField;
      case ValidationErrorType.invalidEmailFormat:
        return UIErrorType.invalidEmailFormat;
      case ValidationErrorType.errorEnterAValidPhoneNumber:
        return UIErrorType.enterAValidPhoneNumber;
      case ValidationErrorType.errorEnterYourFullName:
        return UIErrorType.enterYourFullName;
      case ValidationErrorType.errorEnterCharactersFromaTozOrAToZ:
        return UIErrorType.enterCharactersFromaTozOrAToZ;
      case ValidationErrorType.errorTheNameMustBeComplete:
        return UIErrorType.theNameMustBeComplete;
      case ValidationErrorType.passwordsMustBeTheSame:
        return UIErrorType.passwordsMustBeTheSame;
      case ValidationErrorType.errorThisFieldMustInitializeWithAtSign:
        return UIErrorType.thisFieldMustInitializeWithAtSign;
      case ValidationErrorType.errorThisFieldMustNotContainWhiteSpace:
        return UIErrorType.thisFieldMustNotContainWhiteSpace;
      case ValidationErrorType.minimumSixCharacters:
        return UIErrorType.minimumSixCharacters;
      case ValidationErrorType.errorPleaseLeaveYourComplaint:
        return UIErrorType.pleaseLeaveYourComplaint;
      default:
        return UIErrorType.unexpected;
    }
  }
}
