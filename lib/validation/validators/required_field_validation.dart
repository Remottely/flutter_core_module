import 'package:flutter_core_module/flutter_core_module.dart';

class RequiredFieldValidation implements IFieldValidation {
  @override
  final String field;

  RequiredFieldValidation(this.field);

  @override
  ValidationErrorType? validate(Map<String, dynamic> input) =>
      input[field]?.isNotEmpty == true
          ? null
          : ValidationErrorType.requiredField;

  @override
  bool operator ==(covariant RequiredFieldValidation other) {
    if (identical(this, other)) return true;

    return other.field == field;
  }

  @override
  int get hashCode => field.hashCode;
}
