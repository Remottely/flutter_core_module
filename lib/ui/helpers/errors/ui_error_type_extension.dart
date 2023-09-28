import 'package:flutter_core_module/flutter_core_module.dart';

extension UIErrorTypeExtension on UIErrorType {
  String get message {
    switch (this) {
      case UIErrorType.invalidEmailFormat:
        return I18n.string.errorEnterAValidEmail;
      case UIErrorType.minimumSixCharacters:
        return I18n.string.minimumSixCharacters;
      case UIErrorType.passwordsMustBeTheSame:
        return I18n.string.errorPasswordsMustBeTheSame;
      case UIErrorType.isNotEqualsField:
        return I18n.string.errorTheFieldNeedsToBeEquals;
      case UIErrorType.requiredField:
        return I18n.string.errorRequiredField;
      case UIErrorType.invalidField:
        return I18n.string.errorInvalidField;
      case UIErrorType.pleaseLeaveYourComplaint:
        return I18n.string.errorPleaseLeaveYourComplaint;
      case UIErrorType.enterAValidPhoneNumber:
        return I18n.string.errorEnterAValidPhoneNumber;
      case UIErrorType.enterYourFullName:
        return I18n.string.errorEnterYourFullName;
      case UIErrorType.enterCharactersFromaTozOrAToZ:
        return I18n.string.errorEnterCharactersFromaTozOrAToZ;
      case UIErrorType.theNameMustBeComplete:
        return I18n.string.errorTheNameMustBeComplete;
      case UIErrorType.invalidCredentials:
        return I18n.string.errorInvalidCredentials;
      case UIErrorType.emailInUse:
        return I18n.string.errorEmailInUse;
      case UIErrorType.thisFieldMustInitializeWithAtSign:
        return I18n.string.errorThisFieldMustInitializeWithAtSign;
      case UIErrorType.thisFieldMustNotContainWhiteSpace:
        return I18n.string.errorThisFieldMustNotContainWhiteSpace;
      case UIErrorType.userNotFound:
        return I18n.string.errorUserNotFound;
      case UIErrorType.userNotLoggedIn:
        return I18n.string.errorUserNotLoggedIn;
      default:
        return I18n.string.errorUnexpectedError;
    }
  }
}
