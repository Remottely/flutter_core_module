// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_core_module/flutter_core_module.dart';

class FullNameValidation implements IFieldValidation {
  @override
  final String field;

  const FullNameValidation(this.field);

  @override
  ValidationErrorType? validate(Map<String, dynamic> input) {
    final String? fullName = input[field] as String?;
    if (input[field]?.isEmpty == true) return null;
    if (fullName == null) return ValidationErrorType.invalidField;

    var initials = getInitials(fullName);
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(patttern);

    if (fullName.isEmpty || (fullName.length < 3)) {
      return ValidationErrorType.errorEnterYourFullName;
    } else if (!regExp.hasMatch(fullName)) {
      return ValidationErrorType.errorEnterCharactersFromaTozOrAToZ;
    } else if ((initials.length < 2) ||
        (initials.length < 2 && fullName.length < 3)) {
      return ValidationErrorType.errorTheNameMustBeComplete;
    }
    return null;
  }

  static String getInitials(String fullName) {
    List<String> names = fullName.split(' ');
    String initials = '';
    int numWords = 1;
    if (numWords < names.length) {
      numWords = names.length;
    } else {
      return '';
    }
    for (var i = 0; i < numWords; i++) {
      initials += names[i][0];
    }
    return initials;
  }

  @override
  bool operator ==(covariant FullNameValidation other) {
    if (identical(this, other)) return true;

    return other.field == field;
  }

  @override
  int get hashCode => field.hashCode;
}
