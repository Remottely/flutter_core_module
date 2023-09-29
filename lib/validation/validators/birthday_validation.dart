
import 'package:flutter_core_module/flutter_core_module.dart';

RegExp regExp = RegExp(
  r'^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$',
  caseSensitive: true,
  multiLine: false,
);

class BirthdayValidation implements IFieldValidation {
  @override
  final String field;

  const BirthdayValidation.brazil(this.field);

  @override
  ValidationErrorType? validate(Map<String, dynamic> input) {
    final String? birthday = input[field] as String?;
    if (input[field]?.isEmpty == true) return null;
    if (birthday == null) return ValidationErrorType.invalidField;

    final isValid = regExp.hasMatch(birthday) && ageCalculate(birthday) >= 0;
    return isValid ? null : ValidationErrorType.invalidField;
  }

  int ageCalculate(String input) {
    if (regExp.hasMatch(input)) {
      DateTime dateTime = DateTime(
        int.parse(input.substring(6)),
        int.parse(input.substring(3, 5)),
        int.parse(input.substring(0, 2)),
      );
      return DateTime.fromMillisecondsSinceEpoch(
                  DateTime.now().difference(dateTime).inMilliseconds)
              .year -
          1970;
    } else {
      return -1;
    }
  }

  @override
  bool operator ==(covariant BirthdayValidation other) {
    if (identical(this, other)) return true;

    return other.field == field;
  }

  @override
  int get hashCode => field.hashCode;
}
