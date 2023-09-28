abstract class ITranslation {
  /// Functions
  String getActivationEmoji({required String value});
  String getActivationTitle({required String value});
  String getMinimumCharacters({required int value});

  /// BottomSheetFeelingsWords
  String get happiness;
  String get discouraged;
  String get msgHelpMe;
  String get passion;
  String get sadness;
  String get trusting;
  String get anxious;

  /// BottomSheetFeelingsEmojis
  String get emojiHappiness;
  String get emojiTrusting;
  String get emojiDiscouraged;
  String get emojiAnxious;
  String get emojiHelp;
  String get emojiPassion;
  String get emojiSadness;

  /// FormInputHints
  String get yourName;
  String get yourFullName;
  String get yourEmail;
  String get leaveYourComplaint;
  String get sendMyHelpRequest;
  String get password;
  String get minimumSixCharacters;
  String get passwordMinimumSixCharacters;
  String get optional;

  /// UIErrors
  String get error;
  String get errorUnexpectedError;
  String get errorUserNotFound;
  String get errorUserDoesNotExist;

  /// FormInputErrors
  String get errorEnterYourFullName;
  String get errorEnterCharactersFromaTozOrAToZ;
  String get errorTheNameMustBeComplete;
  String get errorEnterAValidEmail;
  String get errorThisFieldMustInitializeWithAtSign;
  String get errorThisFieldMustNotContainWhiteSpace;
  String get errorEnterAValidPhoneNumber;
  String get errorEnterAPhoneNumber;
  String get errorPleaseLeaveYourComplaint;
  String get errorPasswordsMustBeTheSame;
  String get errorTheFieldNeedsToBeEquals;
  String get errorRequiredField;
  String get errorInvalidField;
  String get errorInvalidCredentials;
  String get errorEmailInUse;

  String get errorUserNotLoggedIn;

  /// UIStrings
  /// ModuleAccountEmailVerification
  /// ModuleAccountSignIn
  /// ModuleAccountRecoverPassword
  /// ModuleAccountSignUp
  /// Companies
  /// HelpForm
  /// Home
  /// Profile
  /// Chat
  /// Splash
  String get aa1;
  String get aa2;
  String get aa3;
  String get aa4;
  String get aa5;
  String get aa6;
  String get aa7;
  String get aa8;
  String get aa9;
  String get aa10;
  String get aa11;
  String get aa12;
  String get aa13;
  String get aa14;
  String get aa15;
  String get aa16;
  String get aa17;
  String get aa18;
  String get aa19;
  String get aa20;
  String get aa21;
  String get aa22;
  String get aa23;
  String get aa24;
  String get aa25;
  String get aa26;
  String get aa27;
  String get aa28;

  /// web admin
  String get error404PageNotFound;
  String get createAccount;
  String get confirmPassword;
  String get email;
  String get signIn;
  String get name;
  String get reload;
  String get tables;
  String get wait;
  String get backToHome;
}
