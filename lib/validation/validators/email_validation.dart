import 'package:flutter_core_module/flutter_core_module.dart';

class EmailValidation implements IFieldValidation {
  @override
  final String field;

  EmailValidation(this.field);

  @override
  ValidationErrorType? validate(Map<String, dynamic> input) {
    final regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isValid = input[field]?.isNotEmpty != true ||
        regex.hasMatch(input[field] as String);
    return isValid ? null : ValidationErrorType.invalidField;
  }

  @override
  bool operator ==(covariant EmailValidation other) {
    if (identical(this, other)) return true;

    return other.field == field;
  }

  @override
  int get hashCode => field.hashCode;
}
